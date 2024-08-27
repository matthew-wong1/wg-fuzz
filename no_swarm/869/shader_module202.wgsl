struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec4<i32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<i32, 26>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> bool {
    global1 = array<i32, 26>();
    global1 = array<i32, 26>();
    var var_0 = arg_1.b != _wgslsmith_f_op_f32(floor(192f));
    let var_1 = select(select(vec3<bool>(any(vec2<bool>(true, true)), !arg_1.d, all(vec2<bool>(arg_2, arg_1.e))), !vec3<bool>(!arg_1.d, any(vec3<bool>(arg_2, arg_1.e, arg_1.d)), all(vec2<bool>(arg_3, false))), !select(select(vec3<bool>(false, arg_1.e, false), vec3<bool>(false, true, arg_1.e), vec3<bool>(true, false, arg_2)), vec3<bool>(arg_1.d, false, false), !arg_3)), vec3<bool>(!arg_3, all(select(!vec3<bool>(arg_1.d, true, arg_2), select(vec3<bool>(false, true, false), vec3<bool>(false, arg_2, true), vec3<bool>(arg_3, true, false)), u_input.a.x < 0u)), arg_1.e), arg_2);
    var var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(~(~1u), ~(~(~u_input.a.x)), 0u, min(_wgslsmith_mod_u32(~u_input.a.x, 1u), ~16087u)), u_input.a);
    return all(var_1.xx);
}

fn func_2() -> Struct_2 {
    global0 = firstLeadingBit((firstLeadingBit(-2147483647i) | _wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(39402u, 26u)], global1[_wgslsmith_index_u32(u_input.a.x, 26u)]), vec2<i32>(86481i, -2147483647i))) ^ _wgslsmith_mult_i32(-16593i, _wgslsmith_mod_i32(45984i, global1[_wgslsmith_index_u32(0u, 26u)]))) >= global1[_wgslsmith_index_u32(13015u, 26u)];
    global1 = array<i32, 26>();
    global0 = true;
    var var_0 = vec2<bool>(!(any(vec4<bool>(true, true, true, true)) & !all(vec2<bool>(false, true))), false);
    let var_1 = true && var_0.x;
    return Struct_2(select(select(vec2<bool>(func_3(vec4<i32>(-18536i, global1[_wgslsmith_index_u32(38515u, 26u)], 18825i, global1[_wgslsmith_index_u32(u_input.a.x, 26u)]), Struct_1(vec2<i32>(global1[_wgslsmith_index_u32(52801u, 26u)], 3903i), 753f, vec4<i32>(-20268i, global1[_wgslsmith_index_u32(73899u, 26u)], 2147483647i, global1[_wgslsmith_index_u32(35549u, 26u)]), var_0.x, var_1), var_1, var_0.x), true), !vec2<bool>(var_0.x, var_0.x), var_0.x), select(select(vec2<bool>(false, true), !vec2<bool>(var_1, var_1), vec2<bool>(var_0.x, var_1)), vec2<bool>(!var_1, true), -global1[_wgslsmith_index_u32(u_input.a.x, 26u)] <= ~global1[_wgslsmith_index_u32(u_input.a.x, 26u)]), vec2<bool>(~1u == _wgslsmith_mod_u32(4294967295u, u_input.a.x), var_1)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_1, arg_3: i32) -> f32 {
    global0 = true;
    var var_0 = u_input.a.ww >> (vec2<u32>(~min(firstTrailingBit(4294967295u), _wgslsmith_clamp_u32(74520u, u_input.a.x, u_input.a.x)), 48709u) % vec2<u32>(32u));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b, arg_0.a, -739f, arg_2.b)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_2.b, -882f, arg_1.a, 1000f)))) - vec4<f32>(-136f, 1f, 519f, arg_2.b)))));
    var var_2 = false;
    let var_3 = -28481i;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) + _wgslsmith_f_op_f32(-var_1.x))))));
}

fn func_1() -> f32 {
    let var_0 = 0i;
    var var_1 = _wgslsmith_f_op_f32(func_4(Struct_3(-765f, func_2()), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -296f)))), func_2()), Struct_1(_wgslsmith_mod_vec2_i32(~abs(vec2<i32>(global1[_wgslsmith_index_u32(0u, 26u)], var_0)), vec2<i32>(i32(-1i) * -12195i, ~global1[_wgslsmith_index_u32(u_input.a.x, 26u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(947f - _wgslsmith_f_op_f32(round(574f)))), _wgslsmith_mod_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(var_0, 38585i, global1[_wgslsmith_index_u32(u_input.a.x, 26u)], -1i), vec4<i32>(var_0, 1i, -1968i, -1i)), _wgslsmith_mod_vec4_i32(-vec4<i32>(global1[_wgslsmith_index_u32(13774u, 26u)], -42548i, 42010i, 2147483647i), vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 26u)], -25549i, var_0, -56247i))), true, true), _wgslsmith_sub_i32(var_0, -(~firstTrailingBit(var_0)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-332f - _wgslsmith_f_op_f32(-457f * -344f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(~_wgslsmith_dot_vec2_u32(~u_input.a.xw, u_input.a.zw));
    let var_1 = -1532f;
    let var_2 = !vec2<bool>(false, -860f <= _wgslsmith_f_op_f32(func_1()));
    var var_3 = Struct_1(_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(1i, global1[_wgslsmith_index_u32(0u, 26u)]) << (_wgslsmith_clamp_vec2_u32(u_input.a.xw, u_input.a.yy, u_input.a.xz) % vec2<u32>(32u)), ~(~vec2<i32>(global1[_wgslsmith_index_u32(1u, 26u)], -36753i))), _wgslsmith_mod_vec2_i32(~(vec2<i32>(global1[_wgslsmith_index_u32(64957u, 26u)], global1[_wgslsmith_index_u32(var_0, 26u)]) << (u_input.a.ww % vec2<u32>(32u))), abs(~vec2<i32>(-1i, 1i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - 2605f), _wgslsmith_div_vec4_i32(~(-vec4<i32>(-1i, global1[_wgslsmith_index_u32(u_input.a.x, 26u)], 0i, global1[_wgslsmith_index_u32(570u, 26u)])) >> (max(u_input.a, vec4<u32>(u_input.a.x, var_0, u_input.a.x, var_0)) % vec4<u32>(32u)), vec4<i32>(global1[_wgslsmith_index_u32(countOneBits(u_input.a.x), 26u)], ~(-global1[_wgslsmith_index_u32(u_input.a.x, 26u)]), 2147483647i, global1[_wgslsmith_index_u32(countOneBits(var_0), 26u)])), var_2.x, firstTrailingBit(u_input.a.x ^ (4294967295u << (var_0 % 32u))) == firstTrailingBit(u_input.a.x));
    global1 = array<i32, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1, var_1), vec2<f32>(-326f, 1738f))) - vec2<f32>(var_1, 1501f)))), -reverseBits(-2147483647i >> (~u_input.a.x % 32u)), ~(~vec3<u32>(0u, firstLeadingBit(47826u), 1u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-var_3.b), _wgslsmith_f_op_f32(-var_1), var_1, -644f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_3.b, 1500f, -772f, var_3.b))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1088f, var_1, var_1, var_3.b)))))));
}

