struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 21> = array<vec4<i32>, 21>(vec4<i32>(2147483647i, 1i, -1i, i32(-2147483648)), vec4<i32>(-1i, -10107i, 1i, -1i), vec4<i32>(10973i, -23264i, 2147483647i, -4300i), vec4<i32>(44010i, 2104i, -14184i, -31401i), vec4<i32>(50149i, -40478i, i32(-2147483648), 4377i), vec4<i32>(-21598i, -62293i, 23971i, 0i), vec4<i32>(i32(-2147483648), -1i, -39087i, 2147483647i), vec4<i32>(1i, 18163i, -1i, i32(-2147483648)), vec4<i32>(1i, -1i, -8971i, 12473i), vec4<i32>(-15414i, i32(-2147483648), 0i, 1i), vec4<i32>(-7341i, 1i, 17834i, -1i), vec4<i32>(4775i, 7091i, i32(-2147483648), 6633i), vec4<i32>(-6329i, -61626i, 52797i, 8705i), vec4<i32>(-11576i, -59165i, 20059i, 0i), vec4<i32>(-7559i, 1i, 88848i, -30405i), vec4<i32>(0i, -21409i, 2147483647i, 0i), vec4<i32>(0i, -1i, 0i, -26355i), vec4<i32>(27257i, 0i, i32(-2147483648), 9436i), vec4<i32>(-39282i, 34536i, 24311i, 0i), vec4<i32>(-6298i, -1i, -31143i, 1i), vec4<i32>(2147483647i, 42442i, 18897i, -28629i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> f32 {
    global0 = array<vec4<i32>, 21>();
    let var_0 = select((_wgslsmith_sub_u32(arg_0.b, _wgslsmith_sub_u32(arg_0.b, arg_0.b)) | ~(~arg_0.b)) & arg_0.b, arg_0.b, !(!arg_1));
    global0 = array<vec4<i32>, 21>();
    let var_1 = -min(_wgslsmith_div_vec2_i32(-(vec2<i32>(76386i, 2147483647i) & u_input.a), select(min(u_input.a, vec2<i32>(-25750i, u_input.a.x)), -u_input.a, !vec2<bool>(true, arg_1))), ~vec2<i32>(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.x));
    let var_2 = select(vec4<u32>(var_0, 4946u >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_0.b), vec2<u32>(1u, arg_0.b)) % 32u), var_0, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, 18215u, arg_0.b), vec3<u32>(var_0, 30612u, 4294967295u), arg_1), abs(vec3<u32>(4040u, arg_0.b, 4294967295u))), 0u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 11455u, 50248u, 0u) << (vec4<u32>(27479u, var_0, 35958u, var_0) % vec4<u32>(32u)), vec4<u32>(var_0, 1u, 57901u, var_0) ^ vec4<u32>(arg_0.b, var_0, 33621u, 7613u)), ~vec4<u32>(33366u, arg_0.b, var_0, arg_0.b) << (reverseBits(vec4<u32>(arg_0.b, var_0, 1u, 20656u)) % vec4<u32>(32u))), ~abs(vec4<u32>(var_0, var_0, arg_0.b, arg_0.b) | vec4<u32>(arg_0.b, var_0, 1u, 4294967295u)), vec4<u32>(46181u, 1u, _wgslsmith_add_u32(~arg_0.b, ~arg_0.b), var_0)), false);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.a.x))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1169f, arg_0.a.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.a.x + -1771f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1694f, _wgslsmith_f_op_f32(trunc(arg_0.a.a.x)))))));
}

fn func_2(arg_0: vec4<f32>, arg_1: f32, arg_2: vec2<f32>, arg_3: i32) -> vec2<f32> {
    let var_0 = Struct_1(vec2<f32>(-621f, arg_2.x));
    global0 = array<vec4<i32>, 21>();
    let var_1 = abs(vec4<i32>(arg_3, i32(-1i) * -1i, arg_3, _wgslsmith_sub_i32(-1i, 1i)));
    global0 = array<vec4<i32>, 21>();
    global0 = array<vec4<i32>, 21>();
    return vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-581f, -681f) * vec2<f32>(-506f, arg_1))), ~1u), !(arg_3 < (var_1.x ^ 2147483647i)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.x - 415f), _wgslsmith_f_op_f32(sign(arg_2.x)))), -2338f)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(func_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x * -1278f)), _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(3188f + 837f))), arg_0.a.x, 513f), arg_0.a.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(arg_2.a.x)), -460f)), -2147483647i)));
    global0 = array<vec4<i32>, 21>();
    global0 = array<vec4<i32>, 21>();
    var var_1 = arg_1;
    var var_2 = 1i;
    return select(!select(vec4<bool>(false, true, any(vec2<bool>(true, true)), true), vec4<bool>(true, true, select(true, false, true), true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), all(vec3<bool>(true, true, true)) || true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(vec4<bool>(false, any(vec3<bool>(true, true, true)), false, _wgslsmith_mod_i32(12971i, -31697i) < u_input.a.x), !select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true)), func_1(Struct_1(vec2<f32>(-1769f, -713f)), Struct_2(Struct_1(vec2<f32>(-389f, 1034f)), 28010u), Struct_1(vec2<f32>(-1053f, 128f))), true), vec4<bool>(true, all(vec3<bool>(true, true, true)), all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), false)), true)), func_1(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1274f, -764f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(589f, 705f)))), Struct_2(Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -1757f), vec2<f32>(694f, -794f))), 4294967295u), Struct_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-403f, 1000f))))), func_1(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1679f, 1036f) - vec2<f32>(-111f, 551f))), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(2081f, -884f) + vec2<f32>(400f, 186f))), 3633u), Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(348f, -1646f)), vec2<f32>(1f, 1f))))));
    var var_1 = 4294967295u;
    var var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(649f, 1872f), vec2<f32>(_wgslsmith_f_op_f32(757f + _wgslsmith_div_f32(1032f, _wgslsmith_div_f32(-401f, -827f))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-564f, -1171f)))), vec2<bool>(false, var_0.x)));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(454f, -218f) + vec2<f32>(var_2.x, var_2.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), vec2<bool>(any(vec4<bool>(true, false, var_0.x, var_0.x)), any(!vec4<bool>(var_0.x, var_0.x, false, false))))));
    var var_4 = Struct_2(var_3, _wgslsmith_mult_u32(6510u, _wgslsmith_clamp_u32(1u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(40200u, 54554u, 32572u), ~vec3<u32>(72756u, 4294967295u, 1u)))));
    let var_5 = Struct_2(var_4.a, firstTrailingBit(max(var_4.b, _wgslsmith_sub_u32(reverseBits(70041u), _wgslsmith_clamp_u32(85579u, 59024u, var_4.b)))));
    let var_6 = ~(~var_5.b << (_wgslsmith_sub_u32(~var_4.b, _wgslsmith_div_u32(firstTrailingBit(var_4.b), var_5.b)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_5.a.a.x))), _wgslsmith_f_op_f32(-646f + 331f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1122f)) * _wgslsmith_div_f32(-323f, var_3.a.x)), -304f))), reverseBits(select(-select(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), global0[_wgslsmith_index_u32(var_5.b, 21u)], vec4<bool>(var_0.x, false, true, var_0.x)), ~abs(global0[_wgslsmith_index_u32(var_4.b, 21u)]), vec4<bool>(all(vec2<bool>(var_0.x, var_0.x)), var_0.x || var_0.x, all(vec3<bool>(true, true, var_0.x)), true))), firstLeadingBit(-vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(25062i, 1i)), u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 1i, -2147483647i, 12219i), vec4<i32>(-2147483647i, -45363i, 40293i, -1i)), i32(-1i) * -1i)), -_wgslsmith_dot_vec3_i32(~(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) << (vec3<u32>(var_5.b, var_6, var_6) % vec3<u32>(32u))), _wgslsmith_add_vec3_i32(-vec3<i32>(u_input.a.x, -48613i, 6769i), abs(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)))), ~min(~vec4<u32>(var_5.b, 0u, 65668u, 0u), ~firstTrailingBit(vec4<u32>(0u, 0u, 1u, 43385u))));
}

