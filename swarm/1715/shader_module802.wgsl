struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: i32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-1640i, -51405i, 2370i);

var<private> global1: array<vec2<i32>, 13>;

var<private> global2: array<u32, 7>;

var<private> global3: array<vec4<i32>, 8> = array<vec4<i32>, 8>(vec4<i32>(65502i, 2147483647i, -1i, -8168i), vec4<i32>(-28577i, -12540i, 2147483647i, -39379i), vec4<i32>(1i, 1i, 8023i, -75150i), vec4<i32>(2147483647i, -12869i, 69399i, 2147483647i), vec4<i32>(0i, -1i, 0i, i32(-2147483648)), vec4<i32>(1i, 6572i, -1135i, 1i), vec4<i32>(i32(-2147483648), 73519i, -6845i, 2147483647i), vec4<i32>(2147483647i, 61665i, 3616i, 60525i));

var<private> global4: array<Struct_3, 25>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> i32 {
    return select(_wgslsmith_div_i32(-8843i, -((u_input.c << (1u % 32u)) | -u_input.b)), global0.x, true);
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: Struct_3, arg_3: Struct_4) -> bool {
    let var_0 = Struct_2(-(arg_2.b.x ^ _wgslsmith_div_i32(firstLeadingBit(arg_2.b.x), func_3())), Struct_1(((arg_2.a & arg_2.a) | true) && true, firstTrailingBit(-arg_3.b.b), func_3(), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(arg_3.b.d.x)))), -1193f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(291f))))));
    var var_1 = arg_3;
    global3 = array<vec4<i32>, 8>();
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b.d.x, arg_1) - _wgslsmith_div_f32(var_1.b.d.x, 2140f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.b.d.x)) + _wgslsmith_f_op_f32(exp2(var_0.b.d.x)))) - _wgslsmith_f_op_f32(round(-623f))), var_1.b.d.x);
    let var_3 = Struct_1(true != ((_wgslsmith_add_i32(arg_2.b.x, var_1.b.b.x) ^ -global0.x) < 1i), arg_3.b.b, _wgslsmith_mult_i32(4001i, func_3()), vec3<f32>(_wgslsmith_f_op_f32(max(-882f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_1.b.d.x, var_1.b.d.x)))))), _wgslsmith_f_op_f32(arg_3.b.d.x + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_0.b.d.x)), _wgslsmith_f_op_f32(var_2 - 270f), true))), -922f));
    return all(select(!(!select(vec3<bool>(true, var_0.b.a, arg_3.b.a), vec3<bool>(var_3.a, var_0.b.a, false), var_3.a)), !(!(!vec3<bool>(true, arg_2.a, false))), vec3<bool>(!var_1.c, true, all(!vec4<bool>(true, arg_3.c, arg_3.b.a, true)))));
}

fn func_1(arg_0: vec2<f32>, arg_1: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, arg_0.x)))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.x, arg_0.x, 690f), vec3<f32>(-1086f, 543f, arg_0.x)))))));
    global4 = array<Struct_3, 25>();
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(arg_0.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.x, var_0.x))), 1222f))));
    let var_2 = Struct_3(~global0.x != abs(u_input.c), vec2<i32>(select(-2147483647i, arg_1, func_2(global0.x, 327f, Struct_3(true, global0.xz), Struct_4(vec4<i32>(u_input.b, u_input.b, -7170i, arg_1), Struct_1(false, vec3<i32>(15611i, -2147483647i, -57810i), arg_1, vec3<f32>(var_0.x, 796f, var_1.x)), true)) || any(vec4<bool>(false, false, false, false))), u_input.c));
    let var_3 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_0)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(min(-1522f, _wgslsmith_f_op_f32(min(arg_0.x, var_0.x))))) - _wgslsmith_f_op_vec2_f32(-var_0.zx))));
    return Struct_1(!(-2147483647i < _wgslsmith_dot_vec4_i32(vec4<i32>(-28276i, var_2.b.x, -1i, -1i), vec4<i32>(2147483647i, global0.x, global0.x, var_2.b.x))), vec3<i32>(var_2.b.x, firstLeadingBit(83911i), var_2.b.x), global0.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(227f, -318f, var_0.x), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.x, 1508f, var_0.x))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1106f, 1869f, 1232f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -698f, var_3.x))))), vec3<bool>(true, u_input.a > max(6375u, global2[_wgslsmith_index_u32(4294967295u, 7u)]), any(select(vec3<bool>(var_2.a, var_2.a, var_2.a), vec3<bool>(false, var_2.a, var_2.a), false))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_4) -> Struct_4 {
    global4 = array<Struct_3, 25>();
    let var_0 = Struct_3(arg_0.b.a, vec2<i32>(1i, -41770i));
    return arg_2;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3) -> vec3<i32> {
    let var_0 = ~(~(~(~vec2<u32>(41102u, u_input.a) | vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(u_input.a, 7u)]))));
    let var_1 = func_4(Struct_2(1i, func_4(Struct_2(_wgslsmith_dot_vec3_i32(arg_0.a.wyx, vec3<i32>(global0.x, arg_0.a.x, -22485i)), Struct_1(arg_1.a, arg_0.b.b, arg_1.b.x, vec3<f32>(-1130f, arg_0.b.d.x, arg_0.b.d.x))), Struct_2(~(-6971i), arg_0.b), Struct_4(vec4<i32>(1i, arg_1.b.x, -2147483647i, u_input.c), Struct_1(false, arg_0.a.zzz, u_input.b, vec3<f32>(arg_0.b.d.x, -831f, arg_0.b.d.x)), arg_1.a && arg_0.b.a)).b), Struct_2(-66020i, arg_0.b), arg_0).c;
    var var_2 = vec4<bool>(arg_0.b.a || true, !arg_1.a, _wgslsmith_f_op_f32(f32(-1f) * -328f) >= arg_0.b.d.x, false);
    global2 = array<u32, 7>();
    let var_3 = -1284f;
    return (select(vec3<i32>(i32(-1i) * -6945i, firstTrailingBit(global0.x), ~1i), func_4(Struct_2(u_input.c, arg_0.b), Struct_2(u_input.b, Struct_1(true, vec3<i32>(u_input.b, arg_0.a.x, -2147483647i), 0i, arg_0.b.d)), arg_0).b.b, vec3<bool>(func_2(global0.x, 185f, arg_1, arg_0), !var_1, true)) ^ select(-(~vec3<i32>(1i, arg_0.b.c, -5221i)), arg_0.b.b, true)) ^ vec3<i32>(~((arg_0.b.c << (1u % 32u)) & 16338i), -_wgslsmith_mod_i32(arg_1.b.x >> (var_0.x % 32u), -global0.x), 1575i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(func_4(Struct_2(-_wgslsmith_div_i32(global0.x, -2147483647i), func_1(vec2<f32>(-1322f, -1000f), global0.x >> (51443u % 32u))), Struct_2(~u_input.b, Struct_1(true, vec3<i32>(0i, 1i, u_input.b) << (vec3<u32>(global2[_wgslsmith_index_u32(u_input.a, 7u)], 1u, 92213u) % vec3<u32>(32u)), 1i, vec3<f32>(-133f, -502f, 1232f))), Struct_4(vec4<i32>(-25315i, 7191i, global0.x, -1i) | min(global3[_wgslsmith_index_u32(u_input.a, 8u)], global3[_wgslsmith_index_u32(52766u, 8u)]), func_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-368f, 354f), vec2<f32>(461f, 458f))), global0.x), true)), Struct_3(func_4(Struct_2(firstTrailingBit(global0.x), func_1(vec2<f32>(1560f, -925f), -6186i)), Struct_2(1i, Struct_1(true, vec3<i32>(u_input.b, u_input.b, u_input.b), 1i, vec3<f32>(-1081f, 611f, -1396f))), Struct_4(global3[_wgslsmith_index_u32(28688u, 8u)] & vec4<i32>(-1i, global0.x, -1i, global0.x), func_1(vec2<f32>(-903f, 582f), global0.x), true)).b.a, -func_4(Struct_2(global0.x, Struct_1(false, vec3<i32>(global0.x, u_input.b, global0.x), 1i, vec3<f32>(-356f, -1684f, 505f))), Struct_2(global0.x, Struct_1(false, vec3<i32>(global0.x, 2147483647i, -1i), global0.x, vec3<f32>(-574f, 516f, 153f))), Struct_4(global3[_wgslsmith_index_u32(u_input.a, 8u)], Struct_1(false, vec3<i32>(1i, u_input.b, global0.x), 34398i, vec3<f32>(216f, -123f, 264f)), false)).b.b.xx));
    global1 = array<vec2<i32>, 13>();
    let var_0 = min(abs(firstTrailingBit(min(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, global2[_wgslsmith_index_u32(1u, 7u)]), vec2<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 7u)], 7u)])), ~vec2<u32>(19634u, u_input.a)))), vec2<u32>(_wgslsmith_add_u32(max(u_input.a, 49619u), _wgslsmith_mod_u32(37770u, u_input.a)), ~(~33651u << (~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 7u)], 7u)] % 32u))));
    global2 = array<u32, 7>();
    var var_1 = Struct_2(-2147483647i, Struct_1(true, ~select(vec3<i32>(u_input.b, 1i, u_input.c), func_4(Struct_2(u_input.b, Struct_1(false, vec3<i32>(0i, global0.x, u_input.b), 11025i, vec3<f32>(684f, -865f, 423f))), Struct_2(1i, Struct_1(false, vec3<i32>(0i, -9349i, 2147483647i), -1i, vec3<f32>(-514f, -486f, -196f))), Struct_4(vec4<i32>(-28552i, 2147483647i, u_input.c, u_input.c), Struct_1(false, vec3<i32>(-19975i, global0.x, u_input.c), u_input.b, vec3<f32>(-728f, -287f, -425f)), false)).a.zxy, vec3<bool>(false, true, true)), ~(-2147483647i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-608f, 836f, -645f), vec3<f32>(-163f, -954f, -1011f), vec3<bool>(true, false, true))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(467f, 296f, -2935f), vec3<f32>(789f, -891f, -906f)))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1478f), -1770f, _wgslsmith_f_op_f32(-1000f - -770f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(~vec4<u32>(1u, var_0.x, global2[_wgslsmith_index_u32(6368u, 7u)], 0u)))));
}

