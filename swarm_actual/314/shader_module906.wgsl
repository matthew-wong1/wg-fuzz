struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: Struct_3,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<bool, 8>;

var<private> global2: f32;

var<private> global3: array<vec2<f32>, 31> = array<vec2<f32>, 31>(vec2<f32>(505f, -184f), vec2<f32>(-1761f, 193f), vec2<f32>(-318f, -805f), vec2<f32>(-485f, -1468f), vec2<f32>(1000f, -533f), vec2<f32>(806f, -838f), vec2<f32>(-1000f, 1930f), vec2<f32>(-848f, -102f), vec2<f32>(-658f, 541f), vec2<f32>(721f, 1531f), vec2<f32>(402f, -278f), vec2<f32>(1579f, -1135f), vec2<f32>(-395f, 445f), vec2<f32>(-267f, 570f), vec2<f32>(280f, -1223f), vec2<f32>(-344f, -426f), vec2<f32>(1035f, -582f), vec2<f32>(-269f, -123f), vec2<f32>(1522f, -431f), vec2<f32>(187f, -1642f), vec2<f32>(-2515f, -243f), vec2<f32>(1044f, 161f), vec2<f32>(-785f, -2476f), vec2<f32>(386f, -2466f), vec2<f32>(-175f, 825f), vec2<f32>(644f, -102f), vec2<f32>(-691f, 647f), vec2<f32>(1000f, 1365f), vec2<f32>(1071f, -784f), vec2<f32>(-514f, -1813f), vec2<f32>(-613f, -1085f));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<i32>, arg_1: i32) -> vec3<bool> {
    global1 = array<bool, 8>();
    var var_0 = Struct_4(firstLeadingBit(u_input.a), 1f, Struct_3(Struct_1(~_wgslsmith_add_i32(arg_0.x, 28316i), vec2<i32>(i32(-1i) * -1378i, ~1i), ~_wgslsmith_sub_i32(37635i, arg_0.x), -_wgslsmith_mult_i32(-6722i, -15053i), vec3<bool>(all(vec3<bool>(true, global1[_wgslsmith_index_u32(23258u, 8u)], global1[_wgslsmith_index_u32(1u, 8u)])), all(vec2<bool>(global1[_wgslsmith_index_u32(global0.x, 8u)], global1[_wgslsmith_index_u32(global0.x, 8u)])), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, u_input.a, global0.x), 8u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(133f * 599f)) - 832f)), _wgslsmith_mult_vec4_i32(~(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, -14409i, arg_1, arg_0.x)), ((vec4<i32>(29091i, 2147483647i, 0i, 2147483647i) & vec4<i32>(21299i, arg_1, 18269i, arg_1)) >> (vec4<u32>(global0.x, u_input.a, u_input.a, 4294967295u) % vec4<u32>(32u))) << (~abs(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) % vec4<u32>(32u))), Struct_1(max(arg_0.x, min(max(arg_0.x, 4791i), _wgslsmith_clamp_i32(arg_0.x, arg_0.x, -56466i))), arg_0, firstTrailingBit(2018i), 0i, select(vec3<bool>(true, true, true), vec3<bool>(false && global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(1u, 8u)], !global1[_wgslsmith_index_u32(u_input.a, 8u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 8u)], true))));
    var var_1 = -var_0.e.b;
    let var_2 = Struct_5(Struct_2(var_0.d));
    let var_3 = var_0.c.a;
    return var_0.c.a.e;
}

fn func_2(arg_0: i32, arg_1: u32) -> u32 {
    var var_0 = func_3(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0, -_wgslsmith_dot_vec4_i32(vec4<i32>(15500i, arg_0, 1i, arg_0), vec4<i32>(-9054i, -54198i, -1i, -29867i))), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, arg_0) ^ vec2<i32>(-10191i, arg_0), _wgslsmith_div_vec2_i32(vec2<i32>(39890i, 31107i), vec2<i32>(arg_0, arg_0))), 28660i)), arg_0);
    let var_1 = Struct_3(Struct_1(arg_0 << (_wgslsmith_add_u32(_wgslsmith_mod_u32(arg_1, arg_1), 51639u) % 32u), -min(select(vec2<i32>(24017i, arg_0), vec2<i32>(-2147483647i, 2147483647i), false), max(vec2<i32>(arg_0, 1i), vec2<i32>(arg_0, -5617i))), arg_0, min(-2760i, -41448i), vec3<bool>(!global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 1u), 8u)], 1u < (u_input.a ^ global0.x), all(func_3(vec2<i32>(11213i, arg_0), 2114i).zy))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1215f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1323f, -580f) + _wgslsmith_f_op_f32(-148f + -1232f)) * _wgslsmith_f_op_f32(-843f * _wgslsmith_div_f32(1588f, 1377f)))));
    var_0 = select(!(!vec3<bool>(true, true, -591f > var_1.b)), !(!(!vec3<bool>(var_0.x, global1[_wgslsmith_index_u32(57013u, 8u)], var_1.a.e.x))), var_1.a.e);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.b, var_1.b, -802f, 929f), vec4<f32>(var_1.b, 504f, -1957f, 274f))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1.b - -677f), _wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(trunc(-1000f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-612f, 1405f, -2003f, -327f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, var_1.b, 708f, 370f) - vec4<f32>(-198f, 682f, -1724f, var_1.b)))), select(select(select(vec4<bool>(var_1.a.e.x, false, var_1.a.e.x, global1[_wgslsmith_index_u32(54324u, 8u)]), vec4<bool>(true, var_1.a.e.x, true, var_0.x), vec4<bool>(var_1.a.e.x, var_1.a.e.x, true, global1[_wgslsmith_index_u32(global0.x, 8u)])), vec4<bool>(var_1.a.e.x, true, var_0.x, var_1.a.e.x), select(vec4<bool>(false, var_0.x, false, true), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 8u)], var_1.a.e.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, false))), vec4<bool>(var_0.x, true, var_1.a.e.x & var_0.x, false), abs(4294967295u) >= _wgslsmith_clamp_u32(29829u, 18808u, 8783u)))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(1000f, var_1.b)), -1000f)) - _wgslsmith_f_op_f32(sign(-1945f))), var_1.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.b), var_1.b)), 1000f));
    let var_3 = Struct_5(Struct_2(_wgslsmith_mod_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(1i, -25027i, var_1.a.b.x, 34924i), vec4<i32>(arg_0, -23607i, var_1.a.c, arg_0)), vec4<i32>(_wgslsmith_sub_i32(var_1.a.b.x, var_1.a.c), -12605i, _wgslsmith_dot_vec2_i32(vec2<i32>(4625i, -2147483647i), vec2<i32>(-2147483647i, arg_0)), ~2147483647i))));
    return _wgslsmith_dot_vec3_u32(abs(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, arg_1, 0u), vec3<u32>(arg_1, arg_1, arg_1), vec3<u32>(arg_1, u_input.a, global0.x)), _wgslsmith_div_vec3_u32(vec3<u32>(0u, 0u, 0u), vec3<u32>(global0.x, 13239u, global0.x))) ^ ~(vec3<u32>(u_input.a, 1u, 0u) ^ vec3<u32>(u_input.a, 25135u, u_input.a))), _wgslsmith_mod_vec3_u32(vec3<u32>(firstLeadingBit(~4294967295u), u_input.a, 4294967295u), ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1, global0.x, u_input.a), vec3<u32>(arg_1, u_input.a, global0.x)))));
}

fn func_1(arg_0: u32) -> bool {
    global0 = ~max(_wgslsmith_mod_vec3_u32(vec3<u32>(78711u, arg_0, global0.x) | ~vec3<u32>(1u, 95352u, u_input.a), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, arg_0, global0.x) & vec3<u32>(arg_0, u_input.a, arg_0), vec3<u32>(21085u, global0.x, global0.x))), vec3<u32>(35211u >> (1u % 32u), u_input.a, arg_0));
    let var_0 = func_2(min(17836i, -max(~(-25721i), firstLeadingBit(1i))), arg_0);
    global1 = array<bool, 8>();
    global0 = ~(_wgslsmith_mult_vec3_u32(vec3<u32>(global0.x, global0.x, var_0) ^ vec3<u32>(15544u, arg_0, 40762u), ~vec3<u32>(u_input.a, arg_0, global0.x)) | abs(vec3<u32>(0u, global0.x, 9231u) & vec3<u32>(var_0, u_input.a, 13486u))) | firstTrailingBit(firstTrailingBit(~vec3<u32>(var_0, 30354u, 4294967295u)));
    let var_1 = Struct_2(_wgslsmith_mult_vec4_i32(vec4<i32>(-select(-2147483647i, 0i, false), i32(-1i) * -1i, ~(-30913i), _wgslsmith_sub_i32(11771i, countOneBits(-2147483647i))), vec4<i32>(-_wgslsmith_mult_i32(1i, -7297i), abs(_wgslsmith_sub_i32(-1i, -9036i)), 1i, ~(-2147483647i))));
    return true;
}

fn func_4(arg_0: vec2<bool>, arg_1: bool) -> Struct_4 {
    var var_0 = select(!vec4<bool>(global1[_wgslsmith_index_u32(0u, 8u)], any(vec3<bool>(true, global1[_wgslsmith_index_u32(global0.x, 8u)], arg_1)), ~u_input.a > _wgslsmith_add_u32(19200u, 0u), false), select(select(vec4<bool>(!arg_0.x, true || global1[_wgslsmith_index_u32(0u, 8u)], global1[_wgslsmith_index_u32(u_input.a, 8u)] != false, any(vec4<bool>(arg_0.x, global1[_wgslsmith_index_u32(1u, 8u)], true, global1[_wgslsmith_index_u32(u_input.a, 8u)]))), select(vec4<bool>(arg_1, arg_0.x, arg_1, arg_1), select(vec4<bool>(true, false, arg_1, false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 8u)], true, global1[_wgslsmith_index_u32(u_input.a, 8u)], false), arg_0.x), 4294967295u > global0.x), select(vec4<bool>(global1[_wgslsmith_index_u32(57793u, 8u)], arg_0.x, arg_0.x, false), vec4<bool>(arg_1, arg_0.x, global1[_wgslsmith_index_u32(19911u, 8u)], arg_1), select(vec4<bool>(arg_0.x, arg_0.x, false, global1[_wgslsmith_index_u32(1u, 8u)]), vec4<bool>(global1[_wgslsmith_index_u32(5874u, 8u)], arg_1, arg_0.x, global1[_wgslsmith_index_u32(global0.x, 8u)]), vec4<bool>(global1[_wgslsmith_index_u32(22279u, 8u)], false, false, global1[_wgslsmith_index_u32(4294967295u, 8u)])))), select(!select(vec4<bool>(true, arg_0.x, true, arg_0.x), vec4<bool>(global1[_wgslsmith_index_u32(1u, 8u)], true, true, false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 8u)], false, global1[_wgslsmith_index_u32(70159u, 8u)], false)), !vec4<bool>(arg_0.x, false, true, arg_1), vec4<bool>(!arg_0.x, arg_1, false, arg_0.x)), !vec4<bool>(arg_0.x, arg_1, arg_1, any(arg_0))), all(vec3<bool>(func_3(max(vec2<i32>(0i, -23557i), vec2<i32>(-39303i, 38736i)), 3147i).x, true, !(!global1[_wgslsmith_index_u32(12819u, 8u)]))));
    var var_1 = any(var_0.zz);
    let var_2 = true;
    var var_3 = Struct_4(reverseBits(~(~u_input.a)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(323f - -375f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1227f, _wgslsmith_f_op_f32(min(-433f, -2689f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1171f)))))), Struct_3(Struct_1(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 0i, -1i, 2147483647i), vec4<i32>(-17178i, -2147483647i, 0i, 2147483647i))), vec2<i32>(19699i, abs(-1i)), _wgslsmith_sub_i32(1i, abs(1i)), -1i, var_0.wyy), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-965f + -165f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(345f, -961f, true)), _wgslsmith_f_op_f32(-299f + -1000f)))), _wgslsmith_sub_vec4_i32(abs(firstTrailingBit(vec4<i32>(34593i, -14203i, 0i, 2147483647i))), -vec4<i32>(-1i, reverseBits(19483i), i32(-1i) * -2147483647i, -14310i)), Struct_1(2147483647i, max(vec2<i32>(1i, firstTrailingBit(-38494i)), ~reverseBits(vec2<i32>(57190i, 1i))), 1i << (~_wgslsmith_dot_vec2_u32(vec2<u32>(22018u, 49277u), global0.xy) % 32u), 29353i, !func_3(vec2<i32>(-1i, 1i), firstLeadingBit(9601i))));
    let var_4 = select(vec4<bool>(var_0.x, true, false, all(func_3(vec2<i32>(2147483647i, var_3.e.b.x), _wgslsmith_dot_vec4_i32(var_3.d, var_3.d)))), !(!select(!vec4<bool>(false, var_2, var_0.x, true), vec4<bool>(var_0.x, var_3.e.e.x, var_3.c.a.e.x, global1[_wgslsmith_index_u32(u_input.a, 8u)]), func_1(0u))), !all(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 8u)], true, true)));
    return Struct_4(global0.x << (global0.x % 32u), _wgslsmith_f_op_f32(max(1000f, 485f)), Struct_3(var_3.e, -2012f), firstTrailingBit(vec4<i32>(min(-1i, var_3.d.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_3.c.a.b.x, var_3.d.x, var_3.d.x, -7239i), vec4<i32>(-22815i, 2147483647i, 44463i, -55176i)), _wgslsmith_sub_i32(-1i, var_3.c.a.c), -2147483647i) | vec4<i32>(countOneBits(0i), 0i, -21967i, _wgslsmith_mod_i32(1i, var_3.c.a.a))), var_3.e);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<f32>, 31>();
    global3 = array<vec2<f32>, 31>();
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -1793f);
    global2 = 502f;
    let var_0 = func_4(vec2<bool>(func_1(_wgslsmith_dot_vec2_u32(global0.yx, vec2<u32>(4294967295u, 4294967295u)) ^ _wgslsmith_div_u32(10275u, u_input.a)), all(!vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 8u)], global1[_wgslsmith_index_u32(u_input.a, 8u)], global1[_wgslsmith_index_u32(0u, 8u)]))), true);
    global3 = array<vec2<f32>, 31>();
    let var_1 = false;
    let x = u_input.a;
    s_output = StorageBuffer(1u, var_0.c.b, vec4<u32>(func_2(-29360i, _wgslsmith_sub_u32(80567u, ~var_0.a)), 4294967295u, 0u, ~u_input.a), ~(vec2<u32>(u_input.a, global0.x) & global0.yz));
}

