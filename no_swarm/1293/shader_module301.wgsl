struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
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

var<private> global0: array<vec3<u32>, 8>;

var<private> global1: array<vec4<bool>, 20>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: vec4<bool>, arg_3: f32) -> vec2<i32> {
    global1 = array<vec4<bool>, 20>();
    var var_0 = _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(~8028u, u_input.b, ~abs(1u), 1u), countOneBits(vec4<u32>(0u, 95306u, 4294967295u, 24739u) >> (firstLeadingBit(vec4<u32>(2467u, 0u, u_input.b, u_input.b)) % vec4<u32>(32u)))), ~firstTrailingBit(~(~vec4<u32>(4294967295u, u_input.b, 0u, u_input.b))));
    var var_1 = select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, arg_2.x, false, arg_2.x), arg_2, global1[_wgslsmith_index_u32(0u, 20u)]), !(!vec4<bool>(false, arg_2.x, false, false))), !select(select(!vec4<bool>(true, arg_1, arg_1, arg_2.x), arg_2, select(vec4<bool>(true, true, false, true), vec4<bool>(arg_1, true, arg_1, arg_2.x), vec4<bool>(false, false, arg_1, true))), vec4<bool>(true, arg_2.x, true, any(vec2<bool>(arg_2.x, arg_2.x))), true), !vec4<bool>(true, false, 4294967295u >= max(u_input.b, 4294967295u), arg_1));
    var_0 = ~(~(reverseBits(vec4<u32>(u_input.b, var_0.x, u_input.b, 33861u)) & ~vec4<u32>(4294967295u, 1u, var_0.x, u_input.b)) | (_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, var_0.x, 4294967295u, 1u), vec4<u32>(u_input.b, 1u, u_input.b, u_input.b)), vec4<u32>(0u, 8011u, var_0.x, 4294967295u)) >> (_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b, var_0.x, var_0.x, u_input.b)), ~vec4<u32>(u_input.b, var_0.x, 46261u, 1u)) % vec4<u32>(32u))));
    global1 = array<vec4<bool>, 20>();
    return select(~(vec2<i32>(arg_0.b.a.x, -2147483647i) | abs(arg_0.b.a.zz)) ^ -vec2<i32>(_wgslsmith_mult_i32(u_input.a, -15235i), u_input.c), select(arg_0.b.a.yz, arg_0.b.a.xx, select(!vec2<bool>(var_1.x, true), vec2<bool>(!var_1.x, arg_2.x), 1u <= _wgslsmith_sub_u32(22305u, var_0.x))), var_1.yy);
}

fn func_2(arg_0: bool) -> Struct_2 {
    global0 = array<vec3<u32>, 8>();
    let var_0 = func_3(Struct_4(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-455f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1563f, -411f))), -1000f), Struct_2((vec3<i32>(u_input.c, u_input.a, -42964i) >> (global0[_wgslsmith_index_u32(u_input.b, 8u)] % vec3<u32>(32u))) << (global0[_wgslsmith_index_u32(~u_input.b, 8u)] % vec3<u32>(32u)))), !(!any(vec2<bool>(false, true))) & (_wgslsmith_div_i32(u_input.a, u_input.c) != ~(u_input.a ^ 10955i)), select(select(vec4<bool>(u_input.a >= -2147483647i, arg_0, !arg_0, arg_0), global1[_wgslsmith_index_u32(u_input.b, 20u)], arg_0), !vec4<bool>(arg_0, !arg_0, arg_0 & true, true), global1[_wgslsmith_index_u32(u_input.b, 20u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1483f - _wgslsmith_f_op_f32(sign(-1000f))) - _wgslsmith_f_op_f32(floor(1498f))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(371f)))))), -275f, -471f);
    let var_2 = -var_0.x;
    var var_3 = vec4<u32>(abs(~u_input.b), countOneBits(u_input.b), max(28615u, 5318u), u_input.b & 11727u);
    return Struct_2(~vec3<i32>(var_2, var_0.x, u_input.a));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec2<f32>, arg_3: Struct_3) -> Struct_3 {
    global1 = array<vec4<bool>, 20>();
    var var_0 = select(abs(vec2<u32>(_wgslsmith_dot_vec3_u32(reverseBits(global0[_wgslsmith_index_u32(0u, 8u)]), ~global0[_wgslsmith_index_u32(29396u, 8u)]), ~u_input.b << (_wgslsmith_mult_u32(arg_3.b.x, 93437u) % 32u))), arg_3.b, all(select(select(vec3<bool>(false, arg_3.a, true), vec3<bool>(arg_3.a, true, arg_3.a), arg_3.a & false), !vec3<bool>(arg_3.a, arg_3.a, false), !select(vec3<bool>(arg_3.a, false, arg_3.a), vec3<bool>(arg_3.a, true, arg_3.a), false))));
    let var_1 = arg_3;
    global0 = array<vec3<u32>, 8>();
    var var_2 = vec3<u32>(76497u, select(_wgslsmith_dot_vec2_u32(var_1.b, vec2<u32>(_wgslsmith_div_u32(arg_3.b.x, 62500u), var_0.x)), _wgslsmith_dot_vec2_u32(firstTrailingBit(reverseBits(var_1.b)), max(arg_3.b, vec2<u32>(arg_3.b.x, 0u)) >> (vec2<u32>(var_1.b.x, u_input.b) % vec2<u32>(32u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_2.x, arg_1.x))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * -527f)), var_1.b.x);
    return Struct_3(arg_3.a, firstTrailingBit(arg_3.b) ^ countOneBits(~(var_1.b & vec2<u32>(55851u, 1u))));
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_4) -> i32 {
    let var_0 = arg_2;
    let var_1 = func_4(func_2(false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.a.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1), -1156f)))), vec2<f32>(arg_1, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2.a.x)) * 136f)))), Struct_3(select(-170f > _wgslsmith_f_op_f32(var_0.a.x - arg_1), -489f >= _wgslsmith_f_op_f32(trunc(-327f)), true), _wgslsmith_mod_vec2_u32(vec2<u32>(~0u, 4294967295u), ~firstLeadingBit(vec2<u32>(u_input.b, 4294967295u)))));
    let var_2 = var_0.b.a.x;
    global1 = array<vec4<bool>, 20>();
    let var_3 = var_0.a.x;
    return -((_wgslsmith_dot_vec2_i32(var_0.b.a.zz, abs(arg_0.yx)) << (~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, var_1.b.x, 1u), vec4<u32>(23329u, 32505u, u_input.b, 1u)) % 32u)) | -1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (reverseBits(-(vec2<i32>(2147483647i, u_input.a) << (vec2<u32>(10499u, 15431u) % vec2<u32>(32u)))) | vec2<i32>((u_input.c | -15033i) ^ _wgslsmith_clamp_i32(17756i, u_input.a, 34045i), func_1(vec3<i32>(-1i, u_input.a, u_input.a), _wgslsmith_f_op_f32(round(167f)), Struct_4(vec3<f32>(1000f, 453f, -372f), Struct_2(vec3<i32>(-11154i, u_input.c, u_input.a)))))) & vec2<i32>(1i, -(~u_input.c));
    var var_1 = select(true, (_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 29929u, 1u, 4294967295u), ~vec4<u32>(0u, u_input.b, 0u, 0u)) << (_wgslsmith_div_u32(~u_input.b, u_input.b) % 32u)) > countOneBits(~(~12713u)), true);
    global0 = array<vec3<u32>, 8>();
    var_1 = true;
    let var_2 = func_2(true);
    var_1 = true;
    let var_3 = Struct_4(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_div_vec3_f32(vec3<f32>(989f, -1000f, -955f), vec3<f32>(-120f, -204f, 282f)))))), var_2);
    var var_4 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~(~var_4.a.x)));
}

