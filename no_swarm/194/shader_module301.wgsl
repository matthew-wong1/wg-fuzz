struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: bool,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: f32,
    b: vec2<bool>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30> = array<u32, 30>(71955u, 41937u, 18460u, 80175u, 63515u, 17788u, 0u, 4294967295u, 15188u, 65642u, 68561u, 0u, 0u, 53697u, 4294967295u, 18700u, 16351u, 0u, 1u, 0u, 3888u, 0u, 4294967295u, 77511u, 0u, 63833u, 72417u, 1u, 4294967295u, 4294967295u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>) -> bool {
    let var_0 = Struct_1(1298f, u_input.a, all(select(!(!vec3<bool>(false, arg_1.x, arg_1.x)), vec3<bool>(arg_1.x, true, true), abs(global0[_wgslsmith_index_u32(5708u, 30u)]) >= ~79416u)), select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, !(!arg_1.x)), vec4<bool>(select(true, false, arg_1.x), arg_1.x, true, false), false), select(select(_wgslsmith_sub_vec2_u32(firstLeadingBit(u_input.a.xy), ~vec2<u32>(u_input.a.x, u_input.a.x)), vec2<u32>(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], u_input.a.x), reverseBits(u_input.a.x)), arg_1.x), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 30u)], 30u)], 31564u), arg_1));
    global0 = array<u32, 30>();
    global0 = array<u32, 30>();
    let var_1 = vec2<i32>(-1i) * -select(vec2<i32>(-19675i, 2319i), vec2<i32>(1i, 1i), !select(vec2<bool>(var_0.c, false), vec2<bool>(arg_1.x, true), vec2<bool>(false, arg_1.x)));
    var var_2 = arg_1.x;
    return var_0.c;
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_3, arg_3: vec4<u32>) -> bool {
    var var_0 = _wgslsmith_add_vec4_i32(select(firstTrailingBit(~(vec4<i32>(arg_2.b, arg_2.b, arg_2.b, arg_2.b) << (arg_3 % vec4<u32>(32u)))), vec4<i32>(arg_2.b, arg_2.b, -1i, arg_2.b), select(!(!arg_2.a.d), select(select(vec4<bool>(arg_2.a.c, false, arg_2.a.d.x, false), arg_0.b.d, vec4<bool>(false, arg_2.a.d.x, true, true)), arg_2.a.d, arg_1), arg_2.a.d)), min(_wgslsmith_sub_vec4_i32(vec4<i32>(firstLeadingBit(arg_2.b), 0i, min(0i, arg_2.b), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.b, 1i, arg_2.b, arg_2.b), vec4<i32>(0i, arg_2.b, arg_2.b, arg_2.b))), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_2.b, arg_2.b, arg_2.b, arg_2.b), -vec4<i32>(2147483647i, -18295i, -2147483647i, -1i))), vec4<i32>(arg_2.b & ~arg_2.b, ~71231i, abs(countOneBits(40914i)), arg_2.b)));
    var_0 = reverseBits(abs(vec4<i32>(abs(i32(-1i) * -1i), min(-var_0.x, 1i), var_0.x, -arg_2.b)));
    var_0 = abs(abs(select(-(~vec4<i32>(13385i, var_0.x, -2147483647i, var_0.x)), ~vec4<i32>(-2147483647i, 2147483647i, var_0.x, arg_2.b) << (_wgslsmith_div_vec4_u32(arg_3, arg_3) % vec4<u32>(32u)), !arg_0.b.d)));
    let var_1 = Struct_4(498f, vec2<bool>(false, false), ~reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(24575u, arg_3.x), ~arg_2.a.b.zz)));
    var var_2 = var_0.x;
    return any(arg_2.a.d);
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(371f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(217f * -920f), _wgslsmith_f_op_f32(f32(-1f) * -501f))))));
    let var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(440f + var_0))), var_0), var_0);
    var var_2 = firstLeadingBit(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(abs(vec2<u32>(37581u, 57694u)) << (~vec2<u32>(u_input.a.x, arg_0.x) % vec2<u32>(32u)), firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.a.x), u_input.a.zz))), vec2<u32>(u_input.a.x, u_input.a.x)));
    let var_3 = vec4<bool>(any(vec2<bool>(true, false)), -(1i & (10710i >> (u_input.a.x % 32u))) > reverseBits(_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(2147483647i, 12087i)), ~vec2<i32>(1i, 2147483647i))), func_4(Struct_2(~u_input.a, Struct_1(_wgslsmith_f_op_f32(-var_1.x), u_input.a, true, vec4<bool>(true, true, true, true), select(vec2<u32>(arg_0.x, u_input.a.x), arg_0.yw, true))), false, Struct_3(Struct_1(_wgslsmith_f_op_f32(-806f - var_0), u_input.a, func_3(var_1.x, vec2<bool>(false, true)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true)), abs(vec2<u32>(86916u, 1u))), -13966i), vec4<u32>(var_2.x, abs(82957u), abs(_wgslsmith_mult_u32(43286u, 6774u)), ~(~global0[_wgslsmith_index_u32(0u, 30u)]))), false);
    let var_4 = firstLeadingBit(vec3<u32>(4294967295u, _wgslsmith_add_u32(1u, var_2.x), firstLeadingBit(var_2.x)));
    return Struct_1(var_1.x, reverseBits(~vec3<u32>(4294967295u, 0u, 0u)) | vec3<u32>(reverseBits(22954u), 1u, u_input.a.x), false, !var_3, max(vec2<u32>(~36560u, abs(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(4294967295u, 30u)], arg_0.x))), vec2<u32>(~52878u, _wgslsmith_div_u32(reverseBits(4294967295u), var_2.x >> (56770u % 32u)))));
}

fn func_1(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_4) -> vec2<u32> {
    let var_0 = Struct_3(func_2(~(~max(vec4<u32>(6891u, 7647u, 0u, 86759u), vec4<u32>(u_input.a.x, 1u, 4310u, u_input.a.x)))), abs(~1i));
    let var_1 = ~abs(_wgslsmith_div_vec4_u32(abs(vec4<u32>(u_input.a.x, 1u, 0u, 6048u)), ~(~vec4<u32>(arg_2.c.x, 23007u, u_input.a.x, 1u))));
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(floor(var_0.a.a)), var_0.a.b, _wgslsmith_f_op_f32(arg_2.a - _wgslsmith_f_op_f32(f32(-1f) * -1718f)) >= -195f, !var_0.a.d, vec2<u32>(4294967295u, _wgslsmith_mult_u32(arg_2.c.x, _wgslsmith_dot_vec2_u32(u_input.a.xy, var_0.a.b.zz)))), _wgslsmith_sub_i32(abs(_wgslsmith_dot_vec2_i32(arg_1.xx & arg_1.xx, arg_1.xz)), 0i));
    global0 = array<u32, 30>();
    global0 = array<u32, 30>();
    return vec2<u32>(~(~(~var_1.x) << (abs(abs(16798u)) % 32u)), countOneBits(_wgslsmith_sub_u32(34605u, _wgslsmith_mult_u32(abs(var_0.a.e.x), firstTrailingBit(4294967295u)))));
}

fn func_5(arg_0: vec2<u32>) -> Struct_4 {
    let var_0 = ~_wgslsmith_add_i32(_wgslsmith_div_i32(~1i, -60463i), ~abs(0i));
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -131f)), u_input.a >> (u_input.a % vec3<u32>(32u)), !(1i > countOneBits(var_0)), func_2(~(~vec4<u32>(18559u, 1u, 49401u, global0[_wgslsmith_index_u32(u_input.a.x, 30u)]))).d, ~_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.x, arg_0.x), vec2<u32>(20304u, 4294967295u)) | vec2<u32>(~0u, ~u_input.a.x)), var_0);
    let var_2 = func_2(vec4<u32>(abs(firstTrailingBit(~1u)), ~_wgslsmith_clamp_u32(77686u & var_1.a.b.x, 0u, ~4294967295u), 27869u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6389u ^ arg_0.x, 30u)], 30u)]));
    var var_3 = var_1.a.d.x;
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1000f, 628f)))))), vec2<bool>(~(~u_input.a.x) >= _wgslsmith_div_u32(~16727u, var_2.b.x), func_4(Struct_2(u_input.a, var_1.a), true, Struct_3(Struct_1(-275f, var_2.b, var_1.a.d.x, vec4<bool>(var_1.a.d.x, var_1.a.d.x, var_2.d.x, var_1.a.d.x), var_2.b.xz), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0, -1i, var_0, var_1.b), vec4<i32>(0i, var_1.b, 2147483647i, var_0))), vec4<u32>(~var_2.b.x, _wgslsmith_dot_vec2_u32(var_1.a.b.zz, var_2.e), arg_0.x, _wgslsmith_mult_u32(89311u, u_input.a.x)))), arg_0);
}

fn func_6(arg_0: Struct_4) -> Struct_2 {
    let var_0 = func_2(vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, _wgslsmith_mult_u32(countOneBits(7541u), 1u)), 30u)], global0[_wgslsmith_index_u32(57933u, 30u)], 82432u, global0[_wgslsmith_index_u32(arg_0.c.x, 30u)]));
    global0 = array<u32, 30>();
    var var_1 = Struct_2(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(~(~43874u), 30u)], global0[_wgslsmith_index_u32(u_input.a.x, 30u)]), func_2(~vec4<u32>(1u, abs(u_input.a.x), countOneBits(var_0.b.x), _wgslsmith_add_u32(var_0.e.x, var_0.e.x))));
    var var_2 = func_2(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 1u, ~0u, abs(var_0.b.x)), ~vec4<u32>(var_0.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.c.x, 0u, global0[_wgslsmith_index_u32(var_1.a.x, 30u)]), var_0.b), _wgslsmith_dot_vec3_u32(u_input.a, var_0.b), 15076u)));
    var_2 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1129f * -493f))))), var_2.b, !all(var_0.d.xxx), !(!(!var_2.d)), ~select(countOneBits(var_0.e) & vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 30u)], 30u)], 30u)], var_1.a.x), var_0.e, true));
    return Struct_2(min(~(u_input.a << (vec3<u32>(3439u, 37525u, 4294967295u) % vec3<u32>(32u))), ~max(~vec3<u32>(25242u, u_input.a.x, 29574u), select(vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(arg_0.c.x, 30u)], 38477u), var_0.b, vec3<bool>(false, false, false)))), Struct_1(_wgslsmith_f_op_f32(step(706f, var_1.b.a)), vec3<u32>(max(func_1(var_1.b.a, vec4<i32>(41477i, 0i, 2147483647i, -28723i), Struct_4(-1679f, var_2.d.xx, vec2<u32>(0u, var_1.a.x))).x, 0u), _wgslsmith_dot_vec4_u32(max(vec4<u32>(var_1.b.b.x, var_0.b.x, arg_0.c.x, arg_0.c.x), vec4<u32>(147054u, var_0.e.x, u_input.a.x, var_2.e.x)), vec4<u32>(4294967295u, 55343u, 4294967295u, 1u)), ~97641u), true, vec4<bool>(true, false, any(select(vec2<bool>(true, var_0.d.x), vec2<bool>(false, false), false)), var_1.b.c), _wgslsmith_clamp_vec2_u32(vec2<u32>(80861u | u_input.a.x, arg_0.c.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.b.x, var_1.b.e.x), countOneBits(var_0.e), ~var_0.e), _wgslsmith_sub_vec2_u32(var_2.b.xy, var_0.b.yy))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(func_1(_wgslsmith_f_op_f32(max(235f, -1396f)), vec4<i32>(i32(-1i) * -8296i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -3178i, 1i, 27455i), vec4<i32>(-2147483647i, -13875i, -2147483647i, -2147483647i)), _wgslsmith_sub_i32(0i, 14586i), 3551i), Struct_4(_wgslsmith_div_f32(-1062f, 1182f), vec2<bool>(true, true), ~vec2<u32>(15106u, 1u)))));
    global0 = array<u32, 30>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.b.a, _wgslsmith_f_op_f32(-753f - 641f), -1045f, _wgslsmith_f_op_f32(-var_0.b.a)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(var_0.b.a - 2154f), 432f, 1f, _wgslsmith_f_op_f32(exp2(var_0.b.a))))))));
    let var_2 = Struct_3(func_6(func_5(_wgslsmith_sub_vec2_u32(var_0.a.xz, vec2<u32>(global0[_wgslsmith_index_u32(0u, 30u)], 39017u)))).b, -2147483647i);
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1143f * var_0.b.a), _wgslsmith_f_op_f32(ceil(740f))));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_3, var_0.b.a, var_2.a.a, var_2.a.a))))) - vec4<f32>(var_0.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -288f)), var_2.a.a, 1049f)));
    let var_5 = !func_6(Struct_4(func_6(func_5(var_2.a.b.xy)).b.a, vec2<bool>(var_2.a.c && var_2.a.d.x, func_5(var_2.a.b.xy).b.x), _wgslsmith_div_vec2_u32(vec2<u32>(var_0.b.b.x, 0u), vec2<u32>(var_2.a.b.x, 4294967295u)) << ((u_input.a.zy >> (u_input.a.zz % vec2<u32>(32u))) % vec2<u32>(32u)))).b.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -573f), 1000f, var_2.a.a), var_0.b.b);
}

