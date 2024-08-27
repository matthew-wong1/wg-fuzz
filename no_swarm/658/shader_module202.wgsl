struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: vec3<bool> = vec3<bool>(true, false, true);

var<private> global2: array<Struct_1, 7>;

var<private> global3: vec2<i32>;

var<private> global4: Struct_1;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    var var_0 = 532f;
    var_0 = 410f;
    var var_1 = Struct_1(~global4.a, abs(_wgslsmith_mult_vec3_i32(-vec3<i32>(25332i, 1i, 2147483647i), firstTrailingBit(global4.b)) & _wgslsmith_add_vec3_i32(~arg_1.b, vec3<i32>(arg_2.d, global3.x, u_input.a) << (arg_1.a % vec3<u32>(32u)))), _wgslsmith_clamp_u32(u_input.b, abs(~1u), 1u), arg_2.d);
    var var_2 = firstLeadingBit(reverseBits(arg_2.a)) << (arg_2.a % vec3<u32>(32u));
    var var_3 = Struct_1(abs(_wgslsmith_add_vec3_u32(~(global4.a >> (vec3<u32>(u_input.b, 0u, 25602u) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(reverseBits(global4.a), global4.a))), -arg_2.b, arg_0, abs(u_input.c));
    return -_wgslsmith_add_i32(abs(_wgslsmith_mod_i32(arg_1.b.x, 1i)), -_wgslsmith_dot_vec2_i32(arg_2.b.xy, var_1.b.xy));
}

fn func_4(arg_0: vec3<i32>, arg_1: bool, arg_2: vec2<u32>, arg_3: Struct_1) -> vec2<u32> {
    let var_0 = vec2<f32>(1f, 1f);
    let var_1 = ~min(~firstTrailingBit(u_input.b & u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(arg_3.a.x, arg_3.c), max(arg_2.x, arg_2.x), 0u, 45273u), ~reverseBits(vec4<u32>(global4.a.x, global4.a.x, 37094u, 29526u))));
    global4 = Struct_1(~(~vec3<u32>(firstLeadingBit(global4.c), abs(1u), 1u)), ~global4.b << (_wgslsmith_div_vec3_u32(vec3<u32>(~39616u, u_input.b, ~0u), vec3<u32>(13304u, arg_2.x, firstTrailingBit(arg_3.c))) % vec3<u32>(32u)), reverseBits(arg_3.c), ~(-_wgslsmith_mult_i32(global3.x, global3.x)) << (_wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(17832u, arg_3.c, arg_2.x, arg_2.x)), (vec4<u32>(37275u, arg_2.x, arg_2.x, var_1) & vec4<u32>(84487u, arg_3.c, u_input.b, 31043u)) & firstLeadingBit(vec4<u32>(37638u, 1u, u_input.b, 1u))) % 32u));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(443f, -196f, -783f))) + vec3<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1595f), _wgslsmith_f_op_f32(f32(-1f) * -441f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 1379f, -2494f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(895f, -1350f, var_0.x), vec3<f32>(var_0.x, var_0.x, var_0.x))))));
    global0 = global1.x;
    return select(~(~(~arg_2)), ~vec2<u32>(~_wgslsmith_mod_u32(arg_2.x, var_1), global4.c), any(global1.yx));
}

fn func_2() -> vec4<i32> {
    global1 = select(!vec3<bool>(false, any(select(vec3<bool>(false, global1.x, global1.x), vec3<bool>(global1.x, false, true), true)), true), !select(vec3<bool>(true, true, any(vec2<bool>(false, true))), vec3<bool>(false, -1i != global4.d, false), false), false);
    let var_0 = func_4(vec3<i32>(global4.d, global3.x, max(global3.x, firstLeadingBit(~global3.x))), !(!(global1.x && true)), ~vec2<u32>((26717u >> (0u % 32u)) | u_input.b, ~0u), Struct_1(vec3<u32>((u_input.b | 4294967295u) | global4.c, ~4294967295u, firstTrailingBit(18902u)), firstTrailingBit(-vec3<i32>(global4.b.x, -2147483647i, global4.d)), ~_wgslsmith_sub_u32(_wgslsmith_sub_u32(31177u, u_input.b), ~0u), _wgslsmith_clamp_i32(u_input.a, global3.x, func_3(select(0u, u_input.b, false), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global4.a.x, 0u), 7u)], global2[_wgslsmith_index_u32(~0u, 7u)]))));
    global2 = array<Struct_1, 7>();
    let var_1 = ~vec3<u32>(global4.c, ~_wgslsmith_mult_u32(u_input.b, 1u) >> (1u % 32u), func_4(firstTrailingBit(global4.b), true, global4.a.xz, Struct_1(~vec3<u32>(u_input.b, var_0.x, u_input.b), global4.b, 72127u << (1u % 32u), -1i)).x);
    global2 = array<Struct_1, 7>();
    return -(vec4<i32>(-1i) * -max(~vec4<i32>(global3.x, global3.x, u_input.a, 38377i), _wgslsmith_div_vec4_i32(vec4<i32>(global4.d, global4.d, 53243i, global4.d), vec4<i32>(-11139i, 40230i, -1i, -17118i))));
}

fn func_1(arg_0: vec2<bool>, arg_1: i32) -> vec2<f32> {
    let var_0 = Struct_1(vec3<u32>(1u, u_input.b, 104742u), global4.b, u_input.b, countOneBits(-_wgslsmith_div_i32(-1i, 2147483647i)));
    var var_1 = _wgslsmith_mod_vec4_i32((~vec4<i32>(-2147483647i, 1i, -26866i, -2147483647i) & ~vec4<i32>(arg_1, -22163i, arg_1, 9799i)) & abs(vec4<i32>(2147483647i, global4.b.x, 7042i, u_input.c) | vec4<i32>(global3.x, -2147483647i, -2147483647i, 1i)), _wgslsmith_add_vec4_i32(vec4<i32>(global4.b.x ^ 0i, 2123i, global4.b.x, -var_0.d), vec4<i32>(u_input.a, global4.b.x, reverseBits(var_0.d), var_0.d))) ^ reverseBits(func_2() | vec4<i32>(arg_1, _wgslsmith_mod_i32(var_0.d, -1i), global4.b.x, -2147483647i));
    let var_2 = (_wgslsmith_sub_vec2_i32(abs(global4.b.xz), global4.b.yy) ^ firstTrailingBit(var_0.b.zz)) >> (~(global4.a.zx << (var_0.a.zz % vec2<u32>(32u))) % vec2<u32>(32u));
    global3 = _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-global4.b.x, countOneBits(var_0.d)), var_0.b.xx) >> (_wgslsmith_mod_vec2_u32(global4.a.yz, ~reverseBits(global4.a.xx)) % vec2<u32>(32u)), vec2<i32>(func_3(func_4(_wgslsmith_div_vec3_i32(var_0.b, var_0.b), global1.x, reverseBits(var_0.a.zz), Struct_1(global4.a, var_1.zxx, var_0.c, arg_1)).x, Struct_1(vec3<u32>(u_input.b, global4.c, global4.c), _wgslsmith_mod_vec3_i32(var_1.xzy, vec3<i32>(u_input.a, var_0.b.x, 0i)), 4294967295u & u_input.b, reverseBits(584i)), var_0), ~select(~arg_1, abs(56820i), global1.x)));
    global3 = vec2<i32>(1i, _wgslsmith_dot_vec3_i32(~(-func_2().zzz), firstTrailingBit(vec3<i32>(~var_2.x, ~u_input.c, firstLeadingBit(1i)))));
    return vec2<f32>(2122f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1197f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-447f * 1000f)), true))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec2<f32>) -> vec3<bool> {
    var var_0 = u_input.b;
    var var_1 = Struct_1(abs(~arg_0.a), firstLeadingBit(_wgslsmith_add_vec3_i32(func_2().yzy, vec3<i32>(~global3.x, -global4.d, global4.d))), u_input.b, 1i);
    var var_2 = firstLeadingBit(~(-2147483647i)) >> ((arg_0.c | _wgslsmith_dot_vec3_u32(~var_1.a, _wgslsmith_add_vec3_u32(vec3<u32>(1894u, 5126u, global4.c) << (vec3<u32>(global4.a.x, 38945u, 1u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, arg_0.a.x, u_input.b), vec3<u32>(global4.c, global4.c, 0u))))) % 32u);
    let var_3 = select(!select(select(select(vec4<bool>(true, global1.x, false, true), vec4<bool>(false, false, false, false), vec4<bool>(global1.x, false, global1.x, global1.x)), !vec4<bool>(global1.x, false, true, global1.x), all(vec2<bool>(true, true))), !select(vec4<bool>(false, global1.x, global1.x, true), vec4<bool>(global1.x, global1.x, true, global1.x), false), all(vec2<bool>(global1.x, true))), vec4<bool>(true, global1.x, true, false), select(!(!select(vec4<bool>(false, global1.x, false, true), vec4<bool>(global1.x, true, false, global1.x), vec4<bool>(true, global1.x, global1.x, true))), !(!(!vec4<bool>(true, false, global1.x, true))), vec4<bool>(!(false != global1.x), all(vec3<bool>(global1.x, global1.x, false)), _wgslsmith_div_f32(arg_2.x, arg_2.x) < _wgslsmith_f_op_f32(abs(arg_2.x)), any(vec4<bool>(global1.x, true, global1.x, global1.x)) | all(vec2<bool>(global1.x, true)))));
    var var_4 = arg_2.x;
    return vec3<bool>(global1.x, all(vec2<bool>(true, all(global1.yx))), arg_0.a.x > 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~(u_input.c & (global4.b.x & 36000i)));
    let var_1 = !vec2<bool>(global1.x, select(!global1.x, any(vec3<bool>(global1.x, global1.x, true)), global1.x || (u_input.a == global3.x)));
    let var_2 = countOneBits(-_wgslsmith_sub_i32(_wgslsmith_mult_i32(-1i ^ var_0, global4.b.x), _wgslsmith_mod_i32(~2147483647i, _wgslsmith_mult_i32(global4.b.x, var_0))));
    global3 = global4.b.xx;
    let var_3 = 1i;
    global1 = select(!select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, var_1.x), true), select(!vec3<bool>(var_1.x, false, true), vec3<bool>(false, true, true), true), func_5(Struct_1(vec3<u32>(1u, u_input.b, global4.c), vec3<i32>(0i, var_0, 2147483647i), 1u, u_input.a), vec4<i32>(31951i, -2147483647i, global3.x, 1i) | vec4<i32>(var_3, 64569i, 42233i, var_0), _wgslsmith_f_op_vec2_f32(func_1(var_1, -1i)))), !(!select(vec3<bool>(true, true, true), !vec3<bool>(true, var_1.x, true), vec3<bool>(false, var_1.x, false))), !(-1i >= (reverseBits(-2147483647i) >> (firstTrailingBit(16362u) % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(198f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1216f + 2088f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(522f))))), firstTrailingBit(~(~vec3<u32>(u_input.b, u_input.b, global4.a.x))), min(reverseBits(global4.a.yz), _wgslsmith_clamp_vec2_u32(global4.a.xx, _wgslsmith_mult_vec2_u32(~vec2<u32>(global4.c, global4.a.x), global4.a.yx), vec2<u32>(_wgslsmith_mult_u32(global4.a.x, global4.a.x), 4294967295u))));
}

