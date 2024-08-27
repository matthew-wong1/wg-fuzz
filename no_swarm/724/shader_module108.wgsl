struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec2<f32>,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 4> = array<vec4<f32>, 4>(vec4<f32>(529f, -417f, 1048f, -532f), vec4<f32>(2590f, -644f, -803f, 1035f), vec4<f32>(1421f, -924f, -1311f, -139f), vec4<f32>(-264f, -337f, -800f, 876f));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: vec4<i32>) -> vec4<bool> {
    global0 = array<vec4<f32>, 4>();
    var var_0 = vec2<bool>(!all(vec3<bool>(true, true, true)), true);
    global0 = array<vec4<f32>, 4>();
    var var_1 = -19736i;
    var var_2 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(max(-701f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(264f)))))), 932f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -781f) + _wgslsmith_f_op_f32(f32(-1f) * -1578f)))), _wgslsmith_f_op_f32(1164f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -252f))))), true);
    return vec4<bool>(var_2.b, true, true, true);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> u32 {
    global0 = array<vec4<f32>, 4>();
    let var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(round(1184f)), -1208f, _wgslsmith_f_op_f32(-679f * _wgslsmith_f_op_f32(abs(-1023f))), 1279f), max(_wgslsmith_sub_u32(~4294967295u, _wgslsmith_clamp_u32(u_input.a.x, 396u, 28741u)), (u_input.a.x << (arg_0.x % 32u)) & _wgslsmith_mod_u32(u_input.a.x, 70766u)) > abs(reverseBits(4294967295u)));
    var var_1 = !vec3<bool>(!var_0.b, var_0.b, any(vec4<bool>(true, var_0.b, 1561f == var_0.a.x, true)));
    var_1 = func_2(_wgslsmith_mult_vec4_i32(reverseBits(arg_1.d), ((arg_1.d << (vec4<u32>(1u, u_input.a.x, u_input.b, 36031u) % vec4<u32>(32u))) ^ abs(arg_1.d)) ^ -arg_1.d)).zwy;
    var var_2 = var_0.a;
    return 44376u;
}

fn func_1() -> Struct_1 {
    var var_0 = all(vec4<bool>(any(func_2(vec4<i32>(0i, 0i, 23840i, -7893i))), true, !any(select(vec2<bool>(true, false), vec2<bool>(false, false), false)), (firstTrailingBit(12632i) >= _wgslsmith_mod_i32(-18048i, -33633i)) && func_2(vec4<i32>(0i, -2147483647i, -1i, 2147483647i)).x));
    global0 = array<vec4<f32>, 4>();
    let var_1 = Struct_2(global0[_wgslsmith_index_u32(~(func_3(max(vec4<u32>(4294967295u, u_input.b, 0u, 73347u), vec4<u32>(u_input.b, u_input.a.x, u_input.b, 18517u)), Struct_1(vec2<bool>(false, true), vec2<bool>(false, false), false, vec4<i32>(4231i, 2147483647i, 2147483647i, 0i))) | 3333u), 4u)], false);
    let var_2 = Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-405f + 959f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-513f)) * _wgslsmith_f_op_f32(exp2(var_1.a.x))), var_1.b)))), var_1.b, var_1.a.xy, var_1, Struct_1(select(vec2<bool>(true, true), vec2<bool>(-1000f >= var_1.a.x, true), all(!vec2<bool>(false, var_1.b))), vec2<bool>(true, true), var_1.b, vec4<i32>(-1i, 2147483647i, _wgslsmith_clamp_i32(min(0i, -63723i), 0i << (u_input.b % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(27844i, 2147483647i), vec2<i32>(1i, 31267i))), 1i)));
    let var_3 = 0i << (_wgslsmith_sub_u32(36163u, _wgslsmith_mod_u32(u_input.b, ~u_input.a.x)) % 32u);
    return Struct_1(vec2<bool>(false, var_2.e.d.x > ~_wgslsmith_dot_vec4_i32(var_2.e.d, vec4<i32>(6135i, var_3, var_2.e.d.x, 20014i))), var_2.e.b, true, var_2.e.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = min(~(~(countOneBits(var_0.d.zxx) << (vec3<u32>(u_input.a.x, 23098u, u_input.b) % vec3<u32>(32u)))), var_0.d.wyw);
    global0 = array<vec4<f32>, 4>();
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-407f)), _wgslsmith_f_op_f32(205f * -524f), -313f, _wgslsmith_f_op_f32(floor(211f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(4294967295u, 4u)]))), false & !var_0.a.x)), true);
    var var_3 = Struct_1(!(!select(var_0.a, vec2<bool>(true, false), !vec2<bool>(false, var_0.c))), !vec2<bool>(true, 0i > func_1().d.x), ~0u < u_input.b, -(~_wgslsmith_div_vec4_i32(vec4<i32>(0i, 33739i, 0i, -2147483647i), var_0.d)));
    var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(-var_2.a.x), -360f, 889f))), _wgslsmith_f_op_vec4_f32(var_2.a + global0[_wgslsmith_index_u32(~(~9904u), 4u)]), !select(vec4<bool>(true, true, var_2.b, var_2.b), vec4<bool>(false, var_2.b, var_3.b.x, var_3.c), false))), var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(var_2.a.x)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(323f - -462f), -165f, _wgslsmith_f_op_f32(trunc(var_2.a.x)), 164f))))));
}

