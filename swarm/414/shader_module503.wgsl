struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: vec3<bool>,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
    c: Struct_2,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec3<f32> = vec3<f32>(1000f, 613f, 965f);

var<private> global2: array<bool, 7> = array<bool, 7>(true, true, false, true, true, true, false);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_3, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = arg_2.b.e.a.x != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.x, -490f, (arg_1 & 62381i) <= arg_1)) * arg_2.a.b.x);
    var_0 = (firstTrailingBit(~u_input.c) == max(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, u_input.d), vec2<i32>(-19446i, 1i)) ^ -42024i, arg_2.a.a)) & any(!vec2<bool>(arg_2.b.c.x, all(arg_2.b.c)));
    let var_1 = max(vec2<u32>(~_wgslsmith_clamp_u32(arg_2.b.d.x, 0u, 17448u), 6557u) & abs(~(~vec2<u32>(0u, 0u))), _wgslsmith_mod_vec2_u32(~(abs(vec2<u32>(arg_2.a.d.x, 4294967295u)) & select(arg_2.b.d.yz, vec2<u32>(4294967295u, arg_2.a.d.x), arg_2.b.c.x)), vec2<u32>(arg_2.b.d.x, ~(~4294967295u))));
    var var_2 = Struct_4(arg_2.b.b.zyz, arg_2, arg_2.a, arg_3, arg_2.b);
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-309f, -1201f, 1772f)))), vec3<f32>(var_2.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -926f), global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-351f, 2348f)))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.b.b.yxw), _wgslsmith_f_op_vec3_f32(-var_2.e.b.wzz))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.a.e.a)));
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: i32) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(-global1.x);
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(2373f, global1.x), -1128f, global1.x))) - vec3<f32>(_wgslsmith_div_f32(-873f, _wgslsmith_f_op_f32(sign(-1104f))), _wgslsmith_f_op_f32(floor(794f)), _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(-global1.x))));
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1149f, global1.x, 233f)));
    global1 = _wgslsmith_f_op_vec3_f32(func_3(vec2<u32>(5202u, u_input.a), 1i, Struct_3(Struct_2(i32(-1i) * -arg_2, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.a.x, global1.x, -645f, 1102f), vec4<f32>(var_0.a.x, var_0.a.x, -2017f, global1.x)))), vec3<bool>(true, arg_0, false), vec3<u32>(~46381u, _wgslsmith_dot_vec2_u32(vec2<u32>(6962u, 0u), vec2<u32>(37648u, arg_1.x)), u_input.a), Struct_1(vec3<f32>(-1040f, var_0.a.x, -462f))), Struct_2(-1i, vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-1557f + var_0.a.x), global1.x), !(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 7u)], true, global2[_wgslsmith_index_u32(61579u, 7u)])), arg_1.wzz, Struct_1(_wgslsmith_f_op_vec3_f32(round(var_0.a))))), Struct_1(_wgslsmith_f_op_vec3_f32(select(var_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, global1.x, 1948f)))), u_input.c < 2147483647i)))));
    global1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - -2562f)), -213f, _wgslsmith_f_op_f32(-global1.x)))), vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-517f, -226f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.a.x + -1123f))), -325f))), select(vec3<bool>(all(vec3<bool>(arg_0, global2[_wgslsmith_index_u32(u_input.a, 7u)], false)) && !arg_0, true, (var_0.a.x != global1.x) != (2079u < u_input.a)), !select(!vec3<bool>(true, false, global2[_wgslsmith_index_u32(37068u, 7u)]), vec3<bool>(arg_0, true, arg_0), vec3<bool>(arg_0, false, arg_0)), !(all(vec4<bool>(true, true, arg_0, arg_0)) || true))));
    return Struct_1(vec3<f32>(-865f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + global1.x), _wgslsmith_f_op_f32(-1151f * -921f)));
}

fn func_4(arg_0: Struct_1) -> vec3<i32> {
    global2 = array<bool, 7>();
    var var_0 = select(~reverseBits(reverseBits(vec2<u32>(u_input.a, u_input.a)) | vec2<u32>(8269u, 4294967295u)), ~abs(abs(abs(vec2<u32>(u_input.a, 0u)))), any(vec3<bool>(true, !global2[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 7u)], true && all(vec3<bool>(false, false, false)))));
    global0 = arg_0.a.x;
    var_0 = vec2<u32>(~0u, _wgslsmith_dot_vec4_u32(~(vec4<u32>(var_0.x, u_input.a, 1u, u_input.a) >> (vec4<u32>(u_input.a, var_0.x, 32390u, u_input.a) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(0u, var_0.x, var_0.x, 1u)), reverseBits(vec4<u32>(25524u, u_input.a, var_0.x, u_input.a))))) ^ (_wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, 31739u >> (1u % 32u)), select(vec2<u32>(6020u, var_0.x), vec2<u32>(var_0.x, 9499u), vec2<bool>(true, true)) & _wgslsmith_clamp_vec2_u32(vec2<u32>(44384u, 45619u), vec2<u32>(u_input.a, 20656u), vec2<u32>(32984u, 53736u))) & ~(~(vec2<u32>(var_0.x, 40712u) << (vec2<u32>(65105u, 0u) % vec2<u32>(32u)))));
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, _wgslsmith_div_f32(-2003f, _wgslsmith_f_op_f32(-global1.x)), -3100f) * _wgslsmith_f_op_vec3_f32(arg_0.a * arg_0.a)), Struct_3(Struct_2(~u_input.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(824f, global1.x, global1.x, global1.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, arg_0.a.x, -894f) - vec4<f32>(-365f, global1.x, -951f, -106f))), select(select(vec3<bool>(global2[_wgslsmith_index_u32(29554u, 7u)], false, global2[_wgslsmith_index_u32(u_input.a, 7u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(var_0.x, 7u)], global2[_wgslsmith_index_u32(30423u, 7u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(0u, 7u)], true)), select(vec3<bool>(global2[_wgslsmith_index_u32(41349u, 7u)], false, global2[_wgslsmith_index_u32(var_0.x, 7u)]), vec3<bool>(global2[_wgslsmith_index_u32(0u, 7u)], true, true), false), select(vec3<bool>(false, global2[_wgslsmith_index_u32(0u, 7u)], global2[_wgslsmith_index_u32(var_0.x, 7u)]), vec3<bool>(global2[_wgslsmith_index_u32(var_0.x, 7u)], global2[_wgslsmith_index_u32(var_0.x, 7u)], global2[_wgslsmith_index_u32(var_0.x, 7u)]), global2[_wgslsmith_index_u32(u_input.a, 7u)])), vec3<u32>(30960u, min(0u, 1u), 1u), func_2(true, ~vec4<u32>(0u, u_input.a, 1u, var_0.x), _wgslsmith_sub_i32(u_input.d, 43766i))), Struct_2(u_input.c, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, 1421f, arg_0.a.x, -668f) - vec4<f32>(1000f, -111f, 926f, global1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(381f, arg_0.a.x, -1930f, -576f)), global2[_wgslsmith_index_u32(abs(0u), 7u)])), vec3<bool>(any(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 7u)], true)), global1.x == arg_0.a.x, any(vec2<bool>(false, global2[_wgslsmith_index_u32(99602u, 7u)]))), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(var_0.x, 5576u, 58888u)), arg_0)), Struct_2(firstTrailingBit(-firstTrailingBit(u_input.b)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -203f)), arg_0.a.x, global1.x, _wgslsmith_div_f32(710f, arg_0.a.x)), !vec3<bool>(global2[_wgslsmith_index_u32(26727u, 7u)] & false, var_0.x >= 4294967295u, true), ~(~vec3<u32>(25969u, 1u, 40856u)) | firstTrailingBit(vec3<u32>(var_0.x, 17759u, var_0.x)), arg_0), func_2(true, ~vec4<u32>(50629u, abs(4294967295u), min(var_0.x, 7375u), _wgslsmith_div_u32(0u, var_0.x)), -(~u_input.d & (u_input.b ^ u_input.b))), Struct_2(31660i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(607f, global1.x, global1.x, -982f)))))), select(vec3<bool>(any(vec3<bool>(false, global2[_wgslsmith_index_u32(23301u, 7u)], true)), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.x, u_input.a), 7u)], true), vec3<bool>(!global2[_wgslsmith_index_u32(var_0.x, 7u)], true, global2[_wgslsmith_index_u32(~u_input.a, 7u)]), !vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 7u)], false)), ~min(vec3<u32>(0u, u_input.a, 1u), vec3<u32>(var_0.x, u_input.a, 18722u)), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_0.a, vec3<f32>(-374f, -1077f, -551f), vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 7u)], global2[_wgslsmith_index_u32(var_0.x, 7u)]))), vec3<f32>(1494f, global1.x, 692f)))));
    return vec3<i32>(countOneBits(-25249i), var_1.e.a, 1i);
}

fn func_5(arg_0: vec3<i32>, arg_1: u32) -> Struct_2 {
    let var_0 = !global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~arg_1 ^ countOneBits(u_input.a), arg_1), 7u)];
    var var_1 = Struct_2(-82385i, vec4<f32>(-299f, _wgslsmith_f_op_f32(max(global1.x, _wgslsmith_div_f32(1496f, _wgslsmith_f_op_f32(-342f + 933f)))), global1.x, _wgslsmith_f_op_vec3_f32(func_3(select(countOneBits(vec2<u32>(70711u, u_input.a)), abs(vec2<u32>(0u, arg_1)), true), i32(-1i) * -2147483647i, Struct_3(Struct_2(arg_0.x, vec4<f32>(258f, 203f, -446f, -985f), vec3<bool>(false, true, true), vec3<u32>(arg_1, u_input.a, arg_1), Struct_1(vec3<f32>(510f, global1.x, global1.x))), Struct_2(27257i, vec4<f32>(global1.x, global1.x, -238f, global1.x), vec3<bool>(global2[_wgslsmith_index_u32(66369u, 7u)], global2[_wgslsmith_index_u32(4294967295u, 7u)], var_0), vec3<u32>(0u, arg_1, u_input.a), Struct_1(vec3<f32>(global1.x, 1000f, -1115f)))), func_2(true, vec4<u32>(1u, 4198u, u_input.a, u_input.a), u_input.d))).x), select(!(!select(vec3<bool>(true, true, global2[_wgslsmith_index_u32(15690u, 7u)]), vec3<bool>(global2[_wgslsmith_index_u32(arg_1, 7u)], false, false), vec3<bool>(false, global2[_wgslsmith_index_u32(0u, 7u)], global2[_wgslsmith_index_u32(4294967295u, 7u)]))), !(!vec3<bool>(true, var_0, true)), all(select(vec4<bool>(var_0, false, false, var_0), select(vec4<bool>(false, var_0, true, true), vec4<bool>(var_0, global2[_wgslsmith_index_u32(u_input.a, 7u)], var_0, var_0), global2[_wgslsmith_index_u32(75946u, 7u)]), global2[_wgslsmith_index_u32(~36772u, 7u)]))), ~(abs(max(vec3<u32>(0u, arg_1, u_input.a), vec3<u32>(arg_1, 44611u, arg_1))) >> (abs(vec3<u32>(arg_1, u_input.a, 4294967295u) & vec3<u32>(arg_1, arg_1, 16599u)) % vec3<u32>(32u))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, global1.x, -240f), vec3<f32>(-1076f, global1.x, global1.x), true)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(241f, global1.x, -255f) + vec3<f32>(-433f, global1.x, global1.x))))));
    global2 = array<bool, 7>();
    global0 = _wgslsmith_div_f32(2080f, _wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_3(~abs(var_1.d.zy), -(~u_input.b), Struct_3(Struct_2(7129i, var_1.b, vec3<bool>(var_0, var_1.c.x, false), vec3<u32>(var_1.d.x, 8955u, arg_1), var_1.e), Struct_2(u_input.b, vec4<f32>(var_1.e.a.x, 1169f, global1.x, global1.x), var_1.c, vec3<u32>(4294967295u, arg_1, arg_1), var_1.e)), func_2(var_1.c.x, _wgslsmith_div_vec4_u32(vec4<u32>(36483u, arg_1, 52512u, 6092u), vec4<u32>(1u, 1u, arg_1, 24348u)), var_1.a))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -192f))))));
    global2 = array<bool, 7>();
    return Struct_2(-var_1.a | var_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 758f, var_1.e.a.x, 1700f)) + _wgslsmith_f_op_vec4_f32(-var_1.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.e.a.x, global1.x, global1.x, -874f))) * vec4<f32>(global1.x, -1725f, 1000f, -728f)), select(!vec4<bool>(false, global2[_wgslsmith_index_u32(var_1.d.x, 7u)], global2[_wgslsmith_index_u32(var_1.d.x, 7u)], true), vec4<bool>(var_1.c.x, true, true, var_0), !var_0)))), vec3<bool>(any(vec4<bool>(global2[_wgslsmith_index_u32(11561u, 7u)], !var_0, true, true)), any(vec2<bool>(any(var_1.c), var_0)), var_1.c.x), ~var_1.d, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(var_1.e.a, vec3<f32>(175f, 447f, var_1.b.x)))))));
}

fn func_6(arg_0: Struct_3, arg_1: f32, arg_2: bool) -> Struct_5 {
    global1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_3(~vec2<u32>(~0u, ~arg_0.a.d.x), ~max(arg_0.a.a, abs(3544i)), arg_0, func_5(abs(~vec3<i32>(0i, -699i, u_input.c)), arg_0.b.d.x | 40718u).e))));
    global2 = array<bool, 7>();
    let var_0 = false;
    global1 = vec3<f32>(104f, 825f, arg_1);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(global1.zz)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b.e.a.x, -1429f), vec2<f32>(-1196f, -2583f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_0.a.e.a.yz))), vec2<bool>(arg_0.a.c.x, true)))));
    return Struct_5(u_input.b);
}

fn func_1(arg_0: bool) -> Struct_3 {
    let var_0 = func_6(Struct_3(func_5(func_4(func_2(arg_0, vec4<u32>(u_input.a, 29479u, 83174u, 46372u), 0i)), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, u_input.a), _wgslsmith_add_vec2_u32(vec2<u32>(40487u, u_input.a), vec2<u32>(u_input.a, u_input.a)))), func_5(~vec3<i32>(u_input.d, u_input.b, 11927i), ~40218u)), _wgslsmith_f_op_f32(global1.x - 1389f), arg_0);
    var var_1 = func_5(max((firstTrailingBit(vec3<i32>(13598i, -1i, var_0.a)) >> (reverseBits(vec3<u32>(u_input.a, 25253u, 85732u)) % vec3<u32>(32u))) << (_wgslsmith_mod_vec3_u32(vec3<u32>(11031u, 1u, 1u) >> (vec3<u32>(u_input.a, 4294967295u, u_input.a) % vec3<u32>(32u)), abs(vec3<u32>(0u, u_input.a, u_input.a))) % vec3<u32>(32u)), vec3<i32>(abs(func_6(Struct_3(Struct_2(-2147483647i, vec4<f32>(global1.x, 2342f, -1712f, -1682f), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 7u)], true, arg_0), vec3<u32>(16304u, u_input.a, u_input.a), Struct_1(vec3<f32>(global1.x, -1286f, global1.x))), Struct_2(u_input.d, vec4<f32>(844f, global1.x, 452f, -579f), vec3<bool>(true, false, arg_0), vec3<u32>(4294967295u, u_input.a, u_input.a), Struct_1(vec3<f32>(global1.x, global1.x, global1.x)))), global1.x, global2[_wgslsmith_index_u32(u_input.a, 7u)]).a), ~max(u_input.d, var_0.a), countOneBits(_wgslsmith_mod_i32(u_input.b, 1i)))), ~u_input.a);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-606f))));
    let var_3 = all(vec2<bool>(!global2[_wgslsmith_index_u32(~(~4294967295u), 7u)], true));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-675f + -173f) * _wgslsmith_f_op_f32(-global1.x))));
    return Struct_3(func_5(-(~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, var_0.a, 272i), vec3<i32>(var_1.a, var_0.a, -5003i))), var_1.d.x), Struct_2(var_1.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(665f, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(max(global1.x, 1286f)), 1000f)), func_5(~vec3<i32>(56029i, 2147483647i, -1i), firstLeadingBit(~7148u)).c, var_1.d, var_1.e));
}

fn func_7(arg_0: Struct_3, arg_1: Struct_3) -> vec3<f32> {
    let var_0 = arg_1;
    let var_1 = 0i;
    global0 = _wgslsmith_f_op_f32(min(-1439f, global1.x));
    let var_2 = arg_1.b.c.yx;
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.x * -111f), _wgslsmith_f_op_vec3_f32(func_3(arg_1.a.d.zz, var_0.b.a, var_0, var_0.a.e)).x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.e.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-442f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_7(Struct_3(Struct_2(u_input.d, vec4<f32>(global1.x, 765f, 1435f, 1000f), vec3<bool>(global2[_wgslsmith_index_u32(1u, 7u)], global2[_wgslsmith_index_u32(0u, 7u)], false), vec3<u32>(u_input.a, 0u, 15862u), Struct_1(vec3<f32>(global1.x, -1000f, 1089f))), Struct_2(1i, vec4<f32>(global1.x, global1.x, -329f, -314f), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 7u)], true, global2[_wgslsmith_index_u32(3778u, 7u)]), vec3<u32>(76705u, u_input.a, u_input.a), Struct_1(vec3<f32>(-1386f, -330f, 883f)))), func_1(false)))))));
    var var_0 = !func_5(_wgslsmith_mult_vec3_i32(vec3<i32>(-36479i, 2147483647i, u_input.c) ^ vec3<i32>(34908i, -39399i, u_input.b), min(vec3<i32>(20380i, 2147483647i, u_input.c), vec3<i32>(30603i, u_input.c, u_input.d))) << (countOneBits(~vec3<u32>(32190u, u_input.a, u_input.a)) % vec3<u32>(32u)), ~(firstTrailingBit(0u) & 63002u)).c.zy;
    let var_1 = global1.x;
    global1 = vec3<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.x - global1.x)))) - -1228f), 1000f);
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(615f - 623f))));
    let var_2 = select(vec4<u32>(0u, ~u_input.a, ~_wgslsmith_mod_u32(4294967295u, 1u) << (u_input.a % 32u), ~firstTrailingBit(~21050u)), ~vec4<u32>(~1u, u_input.a >> (u_input.a % 32u), u_input.a, u_input.a) << (vec4<u32>(0u, u_input.a, u_input.a, func_1(global2[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 7u)]).a.d.x) % vec4<u32>(32u)), !(!global2[_wgslsmith_index_u32(u_input.a, 7u)]));
    let var_3 = Struct_5(u_input.b);
    let var_4 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, -12643i, ~abs(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(43814u, 44841u), vec2<u32>(32655u, u_input.a)), var_2.yz)), vec4<u32>(var_2.x, ~6291u, ~_wgslsmith_dot_vec3_u32(var_2.xzw, vec3<u32>(u_input.a, u_input.a, 12004u)), u_input.a) | var_2);
}

