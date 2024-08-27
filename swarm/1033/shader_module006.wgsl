struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec3<f32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15>;

var<private> global1: i32 = i32(-2147483648);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<i32>) -> vec4<u32> {
    let var_0 = Struct_3(~firstTrailingBit(-vec4<i32>(39833i, -15i, -6172i, u_input.d.x) ^ min(vec4<i32>(85459i, -2147483647i, arg_0.x, u_input.b.x), vec4<i32>(u_input.d.x, -23550i, -11561i, 0i))));
    var var_1 = !vec3<bool>(false, var_0.a.x > _wgslsmith_dot_vec4_i32(~var_0.a, -var_0.a), true);
    var var_2 = Struct_2(Struct_1(var_0.a.x, select(~vec4<i32>(var_0.a.x, 13459i, u_input.b.x, 0i), vec4<i32>(11446i, var_0.a.x, arg_0.x, 2147483647i), all(vec3<bool>(true, true, var_1.x))) ^ vec4<i32>(abs(0i), u_input.b.x, -2147483647i, arg_0.x), 42085u, _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(246f, -1002f, 756f)) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-811f, -850f, -182f))))), vec3<bool>(var_1.x, any(select(vec4<bool>(true, var_1.x, var_1.x, false), vec4<bool>(false, var_1.x, true, var_1.x), false)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-176f, -654f) - 811f) + -501f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-406f - 603f)))), vec3<i32>(-u_input.d.x, -_wgslsmith_add_i32(arg_0.x | -33734i, u_input.a.x), ~2147483647i));
    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(288f + var_2.b) + _wgslsmith_f_op_f32(-var_2.a.d.x)), var_2.a.d.x), _wgslsmith_f_op_f32(min(303f, _wgslsmith_f_op_f32(f32(-1f) * -391f)))))));
    global1 = ~firstLeadingBit(arg_0.x);
    return vec4<u32>(~(~(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~0u, 15u)], 15u)], 15u)], 15u)] ^ (90569u ^ var_2.a.c))), var_2.a.c, _wgslsmith_sub_u32(81549u, ~u_input.c), u_input.c & (~4294967295u ^ abs(_wgslsmith_add_u32(24381u, u_input.c))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<f32>) -> f32 {
    global0 = array<u32, 15>();
    let var_0 = ((~(-vec4<i32>(-2147483647i, u_input.b.x, 8856i, 9825i)) >> (max(countOneBits(vec4<u32>(u_input.c, 21927u, arg_0.x, 64253u)), arg_0 ^ vec4<u32>(global0[_wgslsmith_index_u32(u_input.c, 15u)], u_input.c, 1u, u_input.c)) % vec4<u32>(32u))) & vec4<i32>(0i, -(u_input.a.x ^ u_input.b.x), u_input.a.x, _wgslsmith_div_i32(-u_input.b.x, select(u_input.a.x, -19654i, false)))) & ~vec4<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 63445i), vec2<i32>(u_input.d.x, u_input.b.x)), u_input.b.x, _wgslsmith_div_i32(u_input.a.x, firstTrailingBit(u_input.a.x)), u_input.d.x);
    global1 = _wgslsmith_div_i32(firstTrailingBit(abs(~var_0.x)) | max(2147483647i, i32(-1i) * -u_input.d.x), var_0.x);
    global0 = array<u32, 15>();
    global0 = array<u32, 15>();
    return -465f;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec2<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-arg_1.a.d);
    var var_1 = arg_1.a;
    var var_2 = vec2<i32>(-max(_wgslsmith_dot_vec2_i32(-vec2<i32>(var_1.a, u_input.b.x), vec2<i32>(-2147483647i, arg_1.a.b.x)), firstTrailingBit(53544i) << (1u % 32u)), var_1.a);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(func_4(min(func_3(-arg_1.c), ~_wgslsmith_add_vec4_u32(vec4<u32>(43407u, u_input.c, 1u, global0[_wgslsmith_index_u32(78172u, 15u)]), vec4<u32>(0u, 1u, u_input.c, 43560u))), vec3<f32>(var_1.d.x, -536f, _wgslsmith_div_f32(-640f, _wgslsmith_f_op_f32(1000f - 1278f))))), arg_0.x, 985f, var_1.d.x);
    var var_4 = 21813i;
    return _wgslsmith_div_f32(arg_1.b, var_1.d.x);
}

fn func_5(arg_0: vec4<f32>, arg_1: bool, arg_2: u32) -> Struct_2 {
    var var_0 = Struct_3(reverseBits(_wgslsmith_mult_vec4_i32(-(vec4<i32>(u_input.d.x, 55301i, u_input.d.x, u_input.d.x) | vec4<i32>(-1i, u_input.d.x, -38426i, -50217i)), vec4<i32>(u_input.b.x, -8170i, u_input.d.x, u_input.d.x) & ~vec4<i32>(9574i, -17840i, u_input.a.x, -1i))));
    var var_1 = 4294967295u;
    var_0 = Struct_3(var_0.a);
    var_1 = min(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(42431u, 36148u)), firstLeadingBit(vec2<u32>(global0[_wgslsmith_index_u32(arg_2, 15u)], arg_2))), vec2<u32>(u_input.c, 4294967295u) | vec2<u32>(arg_2, 17002u)) & _wgslsmith_mod_u32(35302u, 4294967295u), 15u)], firstLeadingBit(1u));
    var var_2 = Struct_2(Struct_1(u_input.d.x, max(var_0.a, _wgslsmith_add_vec4_i32(var_0.a, var_0.a)), arg_2, arg_0.xwz, !(!(!vec3<bool>(arg_1, false, false)))), _wgslsmith_f_op_f32(arg_0.x * -980f), var_0.a.zxx);
    return Struct_2(var_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(arg_0.x))))) * _wgslsmith_f_op_f32(var_2.b * arg_0.x)), _wgslsmith_clamp_vec3_i32(var_0.a.www, vec3<i32>(-(var_0.a.x | var_2.a.a), var_2.a.b.x, _wgslsmith_mod_i32(var_2.a.b.x ^ var_0.a.x, _wgslsmith_add_i32(var_2.a.a, -2147483647i))), countOneBits(_wgslsmith_div_vec3_i32(var_2.a.b.xwz, -var_0.a.xxy))));
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_2) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-144f, -686f))) * _wgslsmith_f_op_f32(-200f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b))));
    var var_1 = Struct_3(countOneBits(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-40544i, u_input.b.x, arg_1.a.x, 1i), vec4<i32>(u_input.d.x, -29422i, arg_2.c.x, 2147483647i)), arg_1.a.x), abs(_wgslsmith_dot_vec4_i32(arg_1.a, arg_1.a)), 36998i, 33039i)));
    var var_2 = Struct_3(var_1.a);
    var_1 = arg_1;
    var var_3 = _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(768f * var_0), -788f, -317f)), _wgslsmith_mult_u32(82394u, ~u_input.c) >= ~(76090u | u_input.c), ~u_input.c).b + 1148f);
    return select(!vec3<bool>(true, !any(vec3<bool>(arg_2.a.e.x, true, arg_2.a.e.x)), any(!vec4<bool>(true, false, arg_2.a.e.x, false))), vec3<bool>(arg_2.a.e.x, false, true), arg_2.a.e.x);
}

fn func_1(arg_0: vec2<bool>) -> vec3<u32> {
    var var_0 = select(func_6(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(308f, 803f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(518f, 2005f) - vec2<f32>(-470f, 306f)) + vec2<f32>(-137f, -152f))), Struct_3(vec4<i32>(~1i, -58494i, _wgslsmith_mult_i32(-1i, u_input.b.x), u_input.d.x)), func_5(vec4<f32>(_wgslsmith_f_op_f32(max(-1000f, -1000f)), 173f, 1399f, _wgslsmith_f_op_f32(func_2(vec3<f32>(643f, 269f, 1672f), Struct_2(Struct_1(u_input.a.x, vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, 6054i), 4294967295u, vec3<f32>(157f, 960f, 301f), vec3<bool>(arg_0.x, false, true)), 818f, vec3<i32>(-2147483647i, u_input.a.x, -13690i)), arg_0))), true, select(4294967295u, abs(u_input.c), true))), vec3<bool>(!arg_0.x, !(true | (false || arg_0.x)), true), arg_0.x);
    let var_1 = Struct_2(Struct_1(-1i, vec4<i32>(1i, u_input.d.x, u_input.b.x, min(u_input.b.x, u_input.a.x)), u_input.c & u_input.c, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1008f), -975f, _wgslsmith_f_op_f32(max(-987f, -272f))))), select(vec3<bool>(true, true, false), select(!vec3<bool>(var_0.x, var_0.x, var_0.x), select(vec3<bool>(false, var_0.x, arg_0.x), vec3<bool>(var_0.x, arg_0.x, arg_0.x), true), vec3<bool>(arg_0.x, false, true)), var_0.x)), 914f, vec3<i32>(abs(_wgslsmith_mod_i32(1i, -u_input.d.x)), _wgslsmith_dot_vec3_i32(u_input.b >> (_wgslsmith_mult_vec3_u32(vec3<u32>(47139u, 16862u, 100874u), vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(1600u, 15u)], u_input.c)) % vec3<u32>(32u)), -(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x) ^ vec3<i32>(u_input.d.x, u_input.a.x, 28828i))), u_input.a.x));
    var var_2 = var_1.a;
    global0 = array<u32, 15>();
    global0 = array<u32, 15>();
    return vec3<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(44821u, 21935u, 4294967295u, var_2.c), vec4<u32>(16262u, 4294967295u, u_input.c, 36987u), arg_0.x), abs(vec4<u32>(var_1.a.c, 31140u, global0[_wgslsmith_index_u32(u_input.c, 15u)], 38169u))), ~func_3(var_2.b.wwy).x), 4294967295u), _wgslsmith_div_u32(~(~4294967295u) << ((_wgslsmith_div_u32(global0[_wgslsmith_index_u32(82312u, 15u)], 0u) ^ (59600u << (var_2.c % 32u))) % 32u), ((14959u & var_1.a.c) ^ var_2.c) ^ 4294967295u), ~82381u);
}

fn func_7(arg_0: bool, arg_1: vec3<u32>, arg_2: f32, arg_3: Struct_2) -> vec2<f32> {
    global1 = ~(~(-18589i) ^ u_input.a.x);
    let var_0 = Struct_2(arg_3.a, 1276f, select(vec3<i32>(2147483647i, min(arg_3.a.a & -1i, 0i & arg_3.a.a), _wgslsmith_sub_i32(arg_3.c.x, _wgslsmith_add_i32(29841i, u_input.b.x))), vec3<i32>(select(_wgslsmith_dot_vec4_i32(arg_3.a.b, vec4<i32>(u_input.a.x, arg_3.a.a, 9683i, arg_3.a.b.x)), 18202i, true), u_input.d.x, firstLeadingBit(u_input.a.x & u_input.d.x)), func_5(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1580f, arg_2, arg_2, 1185f)))), true, 11959u).a.e));
    let var_1 = Struct_3(arg_3.a.b);
    var var_2 = ~countOneBits(max(arg_1.xz, arg_1.yx << (abs(vec2<u32>(var_0.a.c, u_input.c)) % vec2<u32>(32u))));
    global1 = _wgslsmith_dot_vec3_i32(vec3<i32>(-max(47885i, var_0.c.x | -30472i), var_1.a.x, countOneBits(_wgslsmith_add_i32(max(-986i, u_input.a.x), arg_3.c.x))), var_0.a.b.yzz);
    return vec2<f32>(-1000f, _wgslsmith_f_op_f32(select(arg_2, 284f, !all(!vec4<bool>(arg_3.a.e.x, false, true, false)))));
}

fn func_8(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: vec3<f32>) -> i32 {
    let var_0 = 696f;
    var var_1 = Struct_3(_wgslsmith_clamp_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(-29264i, u_input.a.x, u_input.a.x, -8389i), vec4<i32>(-30506i, -1i, u_input.a.x, -31131i)), ~vec4<i32>(u_input.d.x, u_input.a.x, u_input.d.x, 11863i) << (~vec4<u32>(u_input.c, 4294967295u, arg_0.x, global0[_wgslsmith_index_u32(2265u, 15u)]) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, 16972i, u_input.d.x), vec4<i32>(u_input.a.x, u_input.d.x, u_input.b.x, 3082i), vec4<i32>(1i, u_input.b.x, 0i, -1i)), ~vec4<i32>(u_input.a.x, 30233i, -1i, u_input.a.x))) | ~(-_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.b.x, u_input.d.x), vec4<i32>(-1i, u_input.a.x, u_input.b.x, -1i))));
    global1 = func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, arg_1.x, 769f, arg_2.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-218f, var_0, arg_1.x, var_0)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0, 1303f, -1661f, 1400f)))))), !(!all(vec2<bool>(false, true))) & false, func_3(countOneBits(_wgslsmith_add_vec3_i32(func_5(vec4<f32>(arg_1.x, arg_1.x, -970f, arg_2.x), true, arg_0.x).a.b.wwz, abs(u_input.b)))).x).c.x;
    global0 = array<u32, 15>();
    var var_2 = arg_0.x;
    return firstLeadingBit(57711i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 17176i;
    global1 = (~1i | func_8(~vec3<u32>(u_input.c, global0[_wgslsmith_index_u32(11594u, 15u)], u_input.c), _wgslsmith_f_op_vec2_f32(func_7(any(vec2<bool>(false, true)), func_1(vec2<bool>(true, true)), _wgslsmith_f_op_f32(round(325f)), Struct_2(Struct_1(u_input.d.x, vec4<i32>(35108i, -1558i, u_input.b.x, u_input.b.x), 0u, vec3<f32>(1000f, -931f, -258f), vec3<bool>(true, false, false)), 944f, vec3<i32>(u_input.b.x, u_input.d.x, u_input.d.x)))), vec3<f32>(_wgslsmith_f_op_f32(sign(-853f)), _wgslsmith_f_op_f32(996f * -192f), _wgslsmith_f_op_f32(step(-177f, -1482f))))) | (_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.b.x | -24603i, u_input.d.x), u_input.b.x) << (1u % 32u));
    var var_0 = true;
    var_0 = false;
    var var_1 = vec2<u32>(~u_input.c, max(_wgslsmith_div_u32(max(~global0[_wgslsmith_index_u32(70571u, 15u)], u_input.c), 4294967295u), 1u));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(vec2<bool>(true, true)).xy, vec3<i32>(u_input.b.x, -_wgslsmith_add_i32(i32(-1i) * -41449i, firstTrailingBit(u_input.b.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(-58673i, 0i, 1i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) << (vec3<u32>(u_input.c, 0u, var_1.x) % vec3<u32>(32u))) << (~abs(var_1.x) % 32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(360f, 1005f, -728f, 1000f))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1000f, -2350f, 146f)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-724f, -998f, -2748f, 922f)))), vec4<f32>(_wgslsmith_div_f32(343f, 635f), _wgslsmith_f_op_f32(f32(-1f) * -549f), -1598f, _wgslsmith_div_f32(-484f, -1110f))))), vec3<f32>(func_5(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1202f, 1664f, 2322f, 530f) - vec4<f32>(-130f, 624f, -641f, -1000f)))), true, 1u).a.d.x, 1577f, _wgslsmith_div_f32(-730f, _wgslsmith_f_op_f32(min(-1463f, -2833f)))));
}

