struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec2<bool>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(vec4<i32>(-55720i, 23690i, -50440i, -1i), i32(-2147483648), 0i, vec2<bool>(false, true), true);

var<private> global1: array<u32, 8>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = vec2<bool>(-23880i < _wgslsmith_mult_i32(u_input.b, ~45316i), true);
    let var_1 = Struct_4(Struct_2(!all(!vec4<bool>(global0.e, false, var_0.x, false)), _wgslsmith_add_u32(~_wgslsmith_add_u32(1u, u_input.a.x), abs(u_input.a.x | 5806u))), Struct_1(u_input.a, select(select(select(global0.d, vec2<bool>(var_0.x, global0.d.x), vec2<bool>(false, false)), vec2<bool>(true, global0.e), select(vec2<bool>(false, true), vec2<bool>(var_0.x, var_0.x), false)), !(!vec2<bool>(var_0.x, false)), var_0.x), vec4<u32>(~global1[_wgslsmith_index_u32(51505u << (global1[_wgslsmith_index_u32(u_input.a.x, 8u)] % 32u), 8u)], 29172u, global1[_wgslsmith_index_u32(0u, 8u)], firstTrailingBit(u_input.a.x))), _wgslsmith_div_i32(u_input.c, 2147483647i));
    let var_2 = Struct_3(var_1.b, var_1.a, var_1.a);
    let var_3 = Struct_1(abs(u_input.a), select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(var_0.x, var_1.a.a, true)), 2147483647i > _wgslsmith_clamp_i32(2147483647i, u_input.c, 12918i)), true == (!global0.d.x | (var_2.c.b < global1[_wgslsmith_index_u32(58885u, 8u)]))), vec4<u32>(abs(_wgslsmith_clamp_u32(~var_2.a.a.x, 1u, 14699u)), var_2.b.b, u_input.a.x, abs(1u)));
    global1 = array<u32, 8>();
    return _wgslsmith_f_op_f32(f32(-1f) * -1125f);
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec4<f32>) -> Struct_4 {
    global1 = array<u32, 8>();
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x * arg_2.x) - _wgslsmith_f_op_f32(func_3())) - arg_2.x)))));
    global1 = array<u32, 8>();
    global0 = Struct_5(_wgslsmith_clamp_vec4_i32(-(~(~global0.a)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.c, -2147483647i, 31266i), global0.a.zyw), ~global0.b, -14903i, u_input.b) | global0.a, vec4<i32>(-global0.a.x, ~global0.c & -u_input.b, -global0.b, countOneBits(38626i))), -53161i, reverseBits(~_wgslsmith_sub_i32(1i, ~13102i)), select(global0.d, select(global0.d, !select(global0.d, global0.d, global0.d.x), select(vec2<bool>(true, true), vec2<bool>(false, global0.d.x), vec2<bool>(true, global0.d.x))), global0.d), global0.d.x);
    let var_1 = ~countOneBits(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, arg_0, 4294967295u), vec4<u32>(arg_1, 11972u, u_input.a.x, u_input.a.x)) ^ ~arg_1, _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(94394u, 8u)], u_input.a.x), 8u)], 1u), _wgslsmith_add_u32(arg_0 | global1[_wgslsmith_index_u32(u_input.a.x, 8u)], 4294967295u), abs(u_input.a.x)));
    return Struct_4(Struct_2(global0.d.x, max(~0u, ~1u)), Struct_1(vec3<u32>(~arg_1, abs(1u), _wgslsmith_mod_u32(1065u, _wgslsmith_mult_u32(2513u, 21468u))), vec2<bool>(global0.d.x, !any(vec3<bool>(true, false, false))), var_1), u_input.c << (3329u % 32u));
}

fn func_4(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_4, arg_3: vec2<bool>) -> Struct_3 {
    var var_0 = func_2(firstTrailingBit(~reverseBits(max(global1[_wgslsmith_index_u32(0u, 8u)], 56376u))), ~_wgslsmith_dot_vec4_u32(min(arg_2.b.c, firstTrailingBit(vec4<u32>(1u, 0u, 763u, 78181u))), ~vec4<u32>(110910u, global1[_wgslsmith_index_u32(u_input.a.x, 8u)], global1[_wgslsmith_index_u32(19312u, 8u)], global1[_wgslsmith_index_u32(1u, 8u)]) | ~vec4<u32>(23591u, arg_1.x, 38229u, arg_1.x)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1179f * 2383f), -336f, 1398f, _wgslsmith_f_op_f32(abs(-1375f)))))));
    global0 = Struct_5(vec4<i32>(_wgslsmith_sub_i32(-1i, 1i), 1i, arg_2.c >> (~(~53722u) % 32u), countOneBits(0i)), arg_2.c, -(~u_input.b), !(!(!select(var_0.b.b, vec2<bool>(true, var_0.a.a), false))), true);
    let var_1 = func_2(firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_2.b.a.x), arg_2.b.a.zx), 1u) & _wgslsmith_mult_u32(~arg_1.x, ~0u)), ~(arg_2.a.b >> (~_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(arg_1.x, 8u)], arg_2.b.a.x) % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_div_vec4_f32(vec4<f32>(-421f, 1553f, -709f, 720f), vec4<f32>(506f, -279f, -467f, -403f)))))).b;
    global0 = Struct_5(-vec4<i32>(countOneBits(_wgslsmith_clamp_i32(var_0.c, 2147483647i, u_input.b)), ~global0.a.x, global0.a.x, min(~arg_2.c, u_input.b)), global0.c, 1i, arg_3, true);
    var_0 = func_2(arg_1.x, ~(~global1[_wgslsmith_index_u32(1u, 8u)]), vec4<f32>(-1090f, -1171f, -436f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-129f - 1000f) * -735f))));
    return Struct_3(func_2(4294967295u, u_input.a.x, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-306f, _wgslsmith_f_op_f32(2083f - -310f), _wgslsmith_f_op_f32(-430f + 617f), _wgslsmith_f_op_f32(f32(-1f) * -786f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1842f, -1051f, 1854f, 164f) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-983f, -923f, 445f, 419f), vec4<f32>(-403f, 1205f, -390f, 1543f)))), vec4<bool>(false, arg_0, u_input.a.x > 0u, any(vec4<bool>(true, true, global0.e, true)))))).b, Struct_2(all(vec2<bool>(false, select(var_1.b.x, arg_2.b.b.x, true))), 10587u), Struct_2(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 1i, var_0.c), vec3<i32>(-2147483647i, u_input.b, u_input.c)), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, 6751i, var_0.c), vec3<i32>(u_input.b, -1i, 25892i))) > var_0.c, ~var_0.a.b));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: vec2<u32>) -> Struct_2 {
    global1 = array<u32, 8>();
    var var_0 = ~arg_0.x;
    var var_1 = _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_2.a.c.www, vec3<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(1u, arg_0.x), 1u), 0u, 6955u), arg_2.a.a ^ u_input.a), vec3<u32>(firstLeadingBit(~arg_0.x), arg_2.a.c.x, global1[_wgslsmith_index_u32((_wgslsmith_mod_u32(arg_0.x, 4294967295u) ^ 1u) << (8585u % 32u), 8u)]));
    var_1 = _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(~39839u, ~var_1.x, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_3.x, arg_0.x), 8u)]), arg_2.a.a), _wgslsmith_add_vec3_u32(~(~vec3<u32>(48104u, 5374u, arg_0.x)), vec3<u32>(94040u, var_1.x, 0u) >> (reverseBits(vec3<u32>(var_1.x, u_input.a.x, 36833u)) % vec3<u32>(32u))), vec3<u32>(~var_1.x, ~arg_3.x, ~u_input.a.x)) >> (u_input.a % vec3<u32>(32u));
    var var_2 = arg_2.c;
    return func_2(~(~26889u >> (0u % 32u)), ~arg_3.x, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-701f - _wgslsmith_f_op_f32(200f - -294f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-986f + 956f))), _wgslsmith_f_op_f32(f32(-1f) * -642f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-576f + -1908f), _wgslsmith_f_op_f32(floor(404f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(261f, 424f, -139f, 1000f))))))))).a;
}

fn func_6(arg_0: Struct_3, arg_1: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(u_input.a, vec2<bool>(true, arg_0.c.a), firstLeadingBit(vec4<u32>(_wgslsmith_div_u32(max(21955u, arg_1.b), firstTrailingBit(u_input.a.x)), firstTrailingBit(_wgslsmith_mult_u32(1u, 4294967295u)), arg_1.b, func_5(~vec4<u32>(arg_1.b, 73132u, u_input.a.x, 1u), global0.a, func_4(true, u_input.a.yx, Struct_4(Struct_2(global0.e, arg_1.b), Struct_1(arg_0.a.a, arg_0.a.b, arg_0.a.c), u_input.c), vec2<bool>(global0.d.x, false)), arg_0.a.c.xy).b)));
    global1 = array<u32, 8>();
    let var_1 = select(~global0.a, select(reverseBits(global0.a), global0.a, all(vec3<bool>(true, true, any(vec3<bool>(true, true, arg_0.c.a))))), select(select(vec4<bool>(arg_1.a, false, global0.c >= 47054i, !arg_0.a.b.x), !vec4<bool>(false, var_0.b.x, true, arg_1.a), false), vec4<bool>(func_5(select(vec4<u32>(u_input.a.x, 84721u, u_input.a.x, arg_0.c.b), var_0.c, vec4<bool>(global0.d.x, false, false, var_0.b.x)), global0.a, Struct_3(arg_0.a, arg_0.c, arg_1), vec2<u32>(1u, arg_1.b)).a, !(global0.c <= 29019i), (global1[_wgslsmith_index_u32(1u, 8u)] > var_0.c.x) || true, func_4(false, vec2<u32>(u_input.a.x, global1[_wgslsmith_index_u32(arg_1.b, 8u)]) & arg_0.a.c.wy, Struct_4(Struct_2(arg_1.a, 4294967295u), Struct_1(vec3<u32>(5085u, arg_1.b, arg_0.b.b), arg_0.a.b, vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x)), -19809i), func_4(true, vec2<u32>(arg_0.a.c.x, var_0.a.x), Struct_4(Struct_2(false, u_input.a.x), Struct_1(vec3<u32>(arg_1.b, arg_0.b.b, 0u), vec2<bool>(true, arg_0.c.a), vec4<u32>(13347u, global1[_wgslsmith_index_u32(4294967295u, 8u)], 21488u, arg_1.b)), u_input.b), vec2<bool>(var_0.b.x, true)).a.b).c.a), !select(!vec4<bool>(false, arg_0.a.b.x, arg_0.a.b.x, false), select(vec4<bool>(true, false, arg_1.a, true), vec4<bool>(false, global0.d.x, false, var_0.b.x), arg_1.a), 33685u == var_0.c.x)));
    global0 = Struct_5(vec4<i32>(i32(-1i) * -62604i, -1i, _wgslsmith_sub_i32(-1i, _wgslsmith_dot_vec3_i32(min(var_1.xww, vec3<i32>(-58559i, global0.a.x, -1i)), global0.a.wwz)), -_wgslsmith_sub_i32(-1595i, 23081i)), _wgslsmith_div_i32(2147483647i >> (u_input.a.x % 32u), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-87989i, global0.b, u_input.b, global0.a.x), vec4<i32>(var_1.x, -15265i, u_input.c, -29496i), vec4<i32>(u_input.b, -58645i, var_1.x, 5127i)) ^ reverseBits(vec4<i32>(global0.c, -2147483647i, var_1.x, 16087i)), abs(min(vec4<i32>(-4693i, var_1.x, u_input.b, 1i), vec4<i32>(global0.b, global0.b, 7213i, -44161i))))), _wgslsmith_dot_vec3_i32(var_1.wzx, vec3<i32>(u_input.b, global0.b, ~(-72271i))), vec2<bool>(arg_1.a && (false && select(global0.d.x, global0.d.x, true)), !arg_0.c.a), any(!select(vec2<bool>(var_0.b.x, false), vec2<bool>(false, global0.d.x), arg_0.b.a || false)));
    global0 = Struct_5(_wgslsmith_add_vec4_i32(var_1, vec4<i32>(var_1.x, 1i, firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.x, u_input.c, var_1.x, global0.b), vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x))), 2147483647i)), select(~2147483647i, -34595i, !(all(vec3<bool>(true, arg_0.b.a, arg_0.c.a)) & false)), _wgslsmith_mod_i32(min(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 0i), var_1.yx), -1i), u_input.c), !var_0.b, global0.d.x & func_4(func_4(global0.b == 1i, _wgslsmith_mod_vec2_u32(u_input.a.zz, var_0.a.zx), func_2(1u, 1u, vec4<f32>(-399f, -2211f, 260f, 2424f)), global0.d).a.b.x, vec2<u32>(15318u, 1u), func_2(arg_1.b & global1[_wgslsmith_index_u32(28811u, 8u)], max(u_input.a.x, arg_1.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-586f, -218f, -450f, 601f))), select(var_0.b, vec2<bool>(true, true), func_2(var_0.c.x, 89198u, vec4<f32>(1000f, 232f, -922f, -839f)).b.b)).b.a);
    return func_2(u_input.a.x, ~(~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(22991u, 4294967295u, arg_0.b.b)), func_2(var_0.c.x, global1[_wgslsmith_index_u32(arg_0.c.b, 8u)], vec4<f32>(217f, -1417f, 501f, -1000f)).b.c.ywy)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(351f, -1230f)), 1f, _wgslsmith_f_op_f32(ceil(-551f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-315f, 1075f)) * _wgslsmith_f_op_f32(floor(-236f)))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -879f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(413f, -668f, false))), 1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1950f))))))).b;
}

fn func_1(arg_0: Struct_5) -> Struct_1 {
    let var_0 = vec2<bool>(all(vec2<bool>(true, arg_0.e)), true);
    let var_1 = func_6(Struct_3(Struct_1(max(vec3<u32>(u_input.a.x, u_input.a.x, global1[_wgslsmith_index_u32(0u, 8u)]), u_input.a) & u_input.a, var_0, vec4<u32>(0u >> (global1[_wgslsmith_index_u32(u_input.a.x, 8u)] % 32u), countOneBits(1u), global1[_wgslsmith_index_u32(min(0u, u_input.a.x), 8u)], 4294967295u ^ global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(37020u, 8u)], 8u)])), Struct_2(all(var_0), 60381u), func_5(~_wgslsmith_div_vec4_u32(vec4<u32>(17393u, global1[_wgslsmith_index_u32(1u, 8u)], u_input.a.x, 27241u), vec4<u32>(19371u, u_input.a.x, global1[_wgslsmith_index_u32(24153u, 8u)], 103762u)), ~(global0.a >> (vec4<u32>(1769u, 1u, 239u, u_input.a.x) % vec4<u32>(32u))), func_4(arg_0.d.x, u_input.a.zy, func_2(global1[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 8u)], 8u)], vec4<f32>(332f, 347f, 1169f, -856f)), arg_0.d), vec2<u32>(u_input.a.x, abs(1u)))), Struct_2(var_0.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 8u)], 8u)]));
    global1 = array<u32, 8>();
    let var_2 = Struct_3(func_6(Struct_3(var_1, Struct_2(true, u_input.a.x), func_4(!arg_0.d.x, ~vec2<u32>(var_1.a.x, 8011u), Struct_4(Struct_2(arg_0.e, 8799u), Struct_1(var_1.c.xxw, vec2<bool>(var_1.b.x, global0.e), var_1.c), global0.b), func_6(Struct_3(Struct_1(vec3<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(37628u, 8u)], 8u)], 4294967295u), global0.d, var_1.c), Struct_2(arg_0.d.x, 1u), Struct_2(global0.d.x, 1u)), Struct_2(arg_0.e, global1[_wgslsmith_index_u32(4294967295u, 8u)])).b).c), func_5(vec4<u32>(~14670u, func_6(Struct_3(var_1, Struct_2(arg_0.e, global1[_wgslsmith_index_u32(u_input.a.x, 8u)]), Struct_2(false, 70870u)), Struct_2(false, 4294967295u)).a.x, func_6(Struct_3(var_1, Struct_2(global0.e, 15718u), Struct_2(false, 10847u)), Struct_2(arg_0.d.x, var_1.a.x)).c.x, 39127u), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(arg_0.a, arg_0.a), vec4<i32>(global0.c, 2147483647i, 9464i, 6730i) ^ vec4<i32>(global0.a.x, 1i, u_input.c, -584i)), Struct_3(func_4(var_0.x, var_1.c.xw, Struct_4(Struct_2(global0.e, u_input.a.x), var_1, global0.b), vec2<bool>(arg_0.d.x, true)).a, func_2(29949u, var_1.c.x, vec4<f32>(636f, -1000f, -1015f, -171f)).a, Struct_2(true, global1[_wgslsmith_index_u32(var_1.a.x, 8u)])), u_input.a.xz)), Struct_2(true, func_6(Struct_3(func_6(Struct_3(Struct_1(vec3<u32>(u_input.a.x, 88846u, 624u), vec2<bool>(arg_0.d.x, false), var_1.c), Struct_2(true, 1u), Struct_2(var_1.b.x, 37375u)), Struct_2(true, 4294967295u)), func_2(13015u, var_1.c.x, vec4<f32>(-929f, 176f, 138f, 1649f)).a, func_4(true, vec2<u32>(46115u, 0u), Struct_4(Struct_2(var_0.x, 4294967295u), var_1, global0.a.x), global0.d).b), func_2(11025u, ~17585u, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(282f, 1267f, 389f, -1269f), vec4<f32>(-903f, -245f, -253f, -107f)))).a).c.x), func_2(_wgslsmith_dot_vec3_u32(~firstLeadingBit(vec3<u32>(u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 8u)], 14466u)), ~(vec3<u32>(1264u, 4294967295u, 794u) ^ var_1.a)), _wgslsmith_sub_u32(func_4(true, vec2<u32>(4294967295u, var_1.c.x), func_2(4294967295u, 1u, vec4<f32>(592f, -984f, 895f, -1879f)), !var_1.b).c.b, ~42090u), vec4<f32>(-674f, -1180f, 1838f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-502f * 1342f), _wgslsmith_f_op_f32(f32(-1f) * -233f))))).a);
    var var_3 = true & !(!func_4(global0.e, var_1.a.xy, func_2(78657u, var_2.b.b, vec4<f32>(1000f, 1352f, -2179f, -1286f)), func_2(0u, 0u, vec4<f32>(-729f, 887f, 1104f, -1396f)).b.b).a.b.x);
    return Struct_1(firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(19863u, 8u)], 1u), _wgslsmith_div_u32(13983u, 17717u), 13515u >> (var_2.a.a.x % 32u)), func_4(true, u_input.a.zy, Struct_4(var_2.b, var_1, -1i), var_1.b).a.c.xxw | ~vec3<u32>(4294967295u, 11026u, 24875u))), global0.d, vec4<u32>(var_1.a.x, ~u_input.a.x, 31501u, func_4(true, _wgslsmith_sub_vec2_u32(firstTrailingBit(var_1.c.zy), vec2<u32>(global1[_wgslsmith_index_u32(var_1.c.x, 8u)], var_1.c.x)), Struct_4(func_5(vec4<u32>(3793u, var_2.c.b, global1[_wgslsmith_index_u32(u_input.a.x, 8u)], var_1.a.x), global0.a, var_2, vec2<u32>(u_input.a.x, var_2.a.a.x)), func_2(0u, u_input.a.x, vec4<f32>(699f, 1334f, 849f, -1417f)).b, arg_0.c | 10254i), var_2.a.b).b.b));
}

fn func_7(arg_0: Struct_4, arg_1: Struct_5, arg_2: u32) -> Struct_5 {
    let var_0 = func_4((1i & global0.c) == -1429i, func_2(111689u, min(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], arg_0.a.b) & arg_2, _wgslsmith_f_op_vec4_f32(-vec4<f32>(497f, 380f, -1322f, -634f))).b.a.yz | _wgslsmith_sub_vec2_u32(~arg_0.b.c.zz, arg_0.b.a.zy), arg_0, arg_1.d);
    var var_1 = global0.a.zz;
    var_1 = vec2<i32>(~countOneBits(~(i32(-1i) * -474i)), abs(abs(i32(-1i) * -u_input.c)));
    global1 = array<u32, 8>();
    let var_2 = func_2(_wgslsmith_dot_vec3_u32(var_0.a.c.yzw, u_input.a), select(~8556u, arg_2 >> (~1u % 32u), all(vec3<bool>(global0.e, global0.e & global0.d.x, all(vec3<bool>(global0.d.x, false, var_0.c.a))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-753f, _wgslsmith_div_f32(959f, -362f))) - _wgslsmith_div_f32(-973f, _wgslsmith_f_op_f32(select(-1212f, 361f, var_0.a.b.x)))), _wgslsmith_f_op_f32(floor(729f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(909f - -1035f))), _wgslsmith_f_op_f32(1f * 736f))).a;
    return Struct_5(abs(-global0.a), 0i, arg_0.c, func_4(false, ~_wgslsmith_mult_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(76806u, 8u)], arg_0.a.b), u_input.a.yy) | var_0.a.c.yx, Struct_4(Struct_2(true, ~4294967295u), Struct_1(select(arg_0.b.a, u_input.a, vec3<bool>(var_0.c.a, arg_0.b.b.x, arg_0.b.b.x)), !vec2<bool>(arg_0.a.a, false), vec4<u32>(var_0.c.b, 0u, global1[_wgslsmith_index_u32(var_0.c.b, 8u)], 1u)), countOneBits(arg_1.c)), select(vec2<bool>(arg_0.a.a, arg_1.d.x), arg_1.d, 24884u != _wgslsmith_mod_u32(25326u, arg_2))).a.b, !var_0.b.a & (true || !arg_1.e));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_5(-vec4<i32>(~(-2147483647i), _wgslsmith_add_i32(1i, u_input.c), 2147483647i, ~_wgslsmith_dot_vec2_i32(global0.a.wx, vec2<i32>(u_input.b, -1i))), u_input.c, -2147483647i, vec2<bool>(global0.e, global0.d.x), all(vec3<bool>(!global0.d.x, global0.e, true)));
    global0 = func_7(Struct_4(Struct_2(global0.e, ~4294967295u), func_1(Struct_5(vec4<i32>(u_input.b, u_input.c, global0.b, global0.a.x), global0.a.x, ~u_input.c, !global0.d, select(global0.d.x, global0.d.x, false))), countOneBits(global0.a.x)), Struct_5(global0.a, 35690i, _wgslsmith_mult_i32(-select(u_input.c, 17171i, false), _wgslsmith_clamp_i32(global0.a.x, u_input.b, global0.a.x)), global0.d, global0.d.x), ~(~(~(u_input.a.x >> (u_input.a.x % 32u)))));
    var var_0 = max(~global1[_wgslsmith_index_u32(~(_wgslsmith_mult_u32(u_input.a.x, global1[_wgslsmith_index_u32(11658u, 8u)]) >> (1u % 32u)), 8u)], abs(~10577u));
    global0 = func_7(func_2(1u, ~reverseBits(u_input.a.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1304f, 644f, -998f, 328f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1440f, 372f, 1618f, -1984f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1115f, -809f, 925f, 838f) - vec4<f32>(-707f, -1146f, 872f, -790f)) - vec4<f32>(478f, 1102f, 174f, 853f)), select(!vec4<bool>(false, true, global0.e, global0.d.x), !vec4<bool>(global0.e, false, false, true), !vec4<bool>(true, true, global0.d.x, false))))), Struct_5(global0.a, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(18940i, u_input.b, global0.b, -60519i), vec4<i32>(global0.c, -2147483647i, 2147483647i, 2147483647i)), func_7(Struct_4(Struct_2(global0.e, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], 8u)]), Struct_1(vec3<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], 4294967295u, 4294967295u), vec2<bool>(true, global0.e), vec4<u32>(1u, 24680u, 4294967295u, u_input.a.x)), 0i), Struct_5(global0.a, u_input.c, -1i, global0.d, global0.e), global1[_wgslsmith_index_u32(~4294967295u, 8u)]).c), 1i, vec2<bool>(!(!global0.d.x), !global0.d.x), global0.d.x), u_input.a.x);
    global0 = func_7(Struct_4(func_2(reverseBits(~u_input.a.x), firstLeadingBit(1u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(100f, 459f, -672f, 2454f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(181f, -1133f, 372f, -870f))))).a, Struct_1(func_2(global1[_wgslsmith_index_u32(~28324u, 8u)], _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(0u, 8u)], u_input.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(892f, 1521f, -262f, -143f))).b.c.yzx, global0.d, _wgslsmith_mod_vec4_u32(select(vec4<u32>(u_input.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], 8u)], u_input.a.x, 0u), vec4<u32>(u_input.a.x, 74276u, 1u, 4294967295u), true), vec4<u32>(u_input.a.x, 4794u, global1[_wgslsmith_index_u32(4294967295u, 8u)], 9036u) << (vec4<u32>(u_input.a.x, u_input.a.x, 1u, 4294967295u) % vec4<u32>(32u)))), 40626i), func_7(func_2(countOneBits(11539u), global1[_wgslsmith_index_u32(firstLeadingBit(1u), 8u)], _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-935f, -1679f, -765f, -916f) * vec4<f32>(1424f, 451f, -122f, -1449f))))), Struct_5(global0.a, select(global0.b << (3834u % 32u), global0.c, global0.e), u_input.c & global0.a.x, !func_1(Struct_5(vec4<i32>(-2147483647i, 9122i, u_input.b, 9211i), -28497i, -45889i, global0.d, global0.d.x)).b, global0.d.x), _wgslsmith_dot_vec3_u32(u_input.a, ~_wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(global1[_wgslsmith_index_u32(5321u, 8u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], 8u)], u_input.a.x)))), _wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(4294967295u, 1u, u_input.a.x, 80568u)), ~vec4<u32>(func_5(vec4<u32>(23531u, u_input.a.x, 55295u, 1u), vec4<i32>(1i, u_input.c, -2147483647i, u_input.c), Struct_3(Struct_1(u_input.a, global0.d, vec4<u32>(0u, 4294967295u, 47493u, u_input.a.x)), Struct_2(global0.d.x, 33641u), Struct_2(false, global1[_wgslsmith_index_u32(55737u, 8u)])), u_input.a.xy).b, reverseBits(4294967295u), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 0u)));
    var var_1 = ~_wgslsmith_div_u32(~(~_wgslsmith_div_u32(u_input.a.x, 4294967295u)), 1u);
    var_1 = u_input.a.x;
    var_1 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1000f, -1407f), 567f, _wgslsmith_div_f32(-1361f, 2693f), _wgslsmith_f_op_f32(trunc(-503f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-583f, 1000f, -2110f, 168f), vec4<f32>(-343f, 526f, -290f, 1000f), vec4<bool>(global0.e, global0.e, global0.e, true))))))), u_input.b);
}

