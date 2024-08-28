struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
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

var<private> global0: array<vec4<f32>, 21>;

var<private> global1: Struct_1 = Struct_1(0u, vec2<u32>(113658u, 1u), vec4<f32>(661f, 1408f, 1000f, -934f), -427f);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: u32) -> u32 {
    let var_0 = 4294967295u;
    var var_1 = !select(arg_1, vec3<bool>(arg_1.x, arg_1.x, !arg_1.x || true), vec3<bool>(!select(arg_1.x, arg_1.x, true), any(!vec4<bool>(arg_1.x, arg_1.x, false, true)), arg_1.x));
    let var_2 = max(20774i, -73548i) >> (var_0 % 32u);
    let var_3 = ~(1i | reverseBits(~(-var_2)));
    global0 = array<vec4<f32>, 21>();
    return arg_0.a;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    global1 = Struct_1(firstTrailingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(50282u, 4294967295u, 12370u, arg_1.b.x), vec4<u32>(global1.b.x, 0u, 29987u, 4294967295u)) | (vec4<u32>(1u, 0u, 0u, 4294967295u) >> (vec4<u32>(arg_2.b.x, 4294967295u, 4565u, global1.a) % vec4<u32>(32u))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 58349u, u_input.b, arg_1.b.x), vec4<u32>(global1.b.x, global1.b.x, arg_1.b.x, 4294967295u)))), vec2<u32>(~2375u, 3312u), _wgslsmith_f_op_vec4_f32(-arg_1.c), 1073f);
    var var_0 = vec4<u32>(firstLeadingBit(abs(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(34713u, global1.b.x, 59722u, 0u), vec4<u32>(1u, arg_1.b.x, 4294967295u, 0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(6561u, 23194u, u_input.b, 1u), vec4<u32>(global1.a, 4294967295u, arg_1.a, global1.b.x))))), ~func_3(Struct_1(_wgslsmith_clamp_u32(4470u, 1u, 0u), reverseBits(vec2<u32>(4294967295u, arg_1.a)), _wgslsmith_f_op_vec4_f32(-arg_1.c), arg_3), vec3<bool>(any(vec4<bool>(false, false, false, false)), u_input.d <= -26883i, true), _wgslsmith_div_u32(u_input.b, u_input.b) | 86023u), 4294967295u, reverseBits(~arg_1.a));
    let var_1 = _wgslsmith_f_op_f32(-1437f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(global1.d)))));
    global1 = Struct_1(func_3(arg_2, vec3<bool>(false, true, any(vec3<bool>(true, true, true))), arg_1.a ^ firstLeadingBit(countOneBits(var_0.x))), vec2<u32>(_wgslsmith_dot_vec2_u32(countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.b, arg_2.b.x), vec2<u32>(arg_2.b.x, arg_2.b.x))), var_0.zw), select(0u, var_0.x, all(vec4<bool>(true, true, true, true)))), arg_2.c, _wgslsmith_div_f32(_wgslsmith_div_f32(222f, _wgslsmith_div_f32(arg_2.d, _wgslsmith_f_op_f32(arg_2.c.x + arg_1.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(785f, -125f))) - _wgslsmith_f_op_f32(trunc(251f)))));
    let var_2 = u_input.d;
    return Struct_1(arg_2.a, arg_2.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(46397u, 21u)]), _wgslsmith_f_op_vec4_f32(-arg_1.c))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(1867f, global1.d, global1.d, arg_0) - global0[_wgslsmith_index_u32(0u, 21u)])))) + arg_1.c), _wgslsmith_f_op_f32(-var_1));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = countOneBits(~_wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(41571i, 13685i, -1i, 27838i)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, global1.a, global1.a, global1.b.x), select(vec4<u32>(global1.b.x, arg_1.a, 8144u, 0u), vec4<u32>(u_input.b, 55209u, global1.b.x, u_input.b), vec4<bool>(true, true, false, false))) % vec4<u32>(32u))) >> (vec4<u32>(arg_1.b.x, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(global1.a, arg_1.b.x, u_input.b), reverseBits(vec3<u32>(17164u, 36056u, 0u))), _wgslsmith_sub_u32(max(_wgslsmith_sub_u32(1u, arg_0.a), func_2(arg_1.d, arg_1, arg_1, arg_0.d).a), 1u), u_input.b) % vec4<u32>(32u));
    var var_1 = Struct_1(global1.b.x, vec2<u32>(1u, min(~reverseBits(1u), arg_0.b.x)), _wgslsmith_f_op_vec4_f32(arg_0.c * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(998f, -1380f, -629f, global1.d), vec4<f32>(-1267f, 1594f, arg_0.c.x, -2361f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c.x, arg_0.d, 783f, 1067f) * global0[_wgslsmith_index_u32(u_input.b, 21u)])))), arg_1.c.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(global1.c.xzy));
    var var_3 = arg_0;
    let var_4 = u_input.c;
    return !(_wgslsmith_f_op_f32(f32(-1f) * -615f) == _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(-var_3.d)));
}

fn func_1(arg_0: vec2<i32>) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.d, -190f)));
    let var_1 = ~global1.b | _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 4294967295u), _wgslsmith_clamp_vec2_u32(global1.b, ~(global1.b & global1.b), vec2<u32>(2071u, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.a, global1.a, 4294967295u), vec3<u32>(u_input.b, global1.b.x, 0u)))));
    let var_2 = global1.c.x;
    var var_3 = ~(u_input.a.yzy ^ vec3<i32>(arg_0.x, 2147483647i, reverseBits(_wgslsmith_mod_i32(u_input.d, arg_0.x))));
    let var_4 = select(!vec4<bool>(true, true, _wgslsmith_clamp_i32(var_3.x, -41630i, 17208i) > 59076i, func_4(func_2(global1.c.x, Struct_1(u_input.b, var_1, vec4<f32>(-701f, -1032f, -662f, global1.d), global1.d), Struct_1(u_input.b, vec2<u32>(0u, global1.a), vec4<f32>(global1.d, global1.d, 2150f, -759f), global1.c.x), global1.c.x), Struct_1(88279u, global1.b, vec4<f32>(global1.c.x, 1000f, global1.d, global1.d), global1.d))), !select(vec4<bool>(true, true, true, 7753i >= var_3.x), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, true)));
    return var_3.xx;
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec3<u32>) -> Struct_1 {
    global0 = array<vec4<f32>, 21>();
    let var_0 = func_2(arg_1.c.x, Struct_1(firstLeadingBit(arg_3.x), ~vec2<u32>(abs(0u), arg_3.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1537f, _wgslsmith_div_f32(488f, 521f), _wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(f32(-1f) * -977f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, arg_1.c.x, 539f, global1.c.x))), arg_1.c.x), Struct_1(abs(arg_0), firstTrailingBit(~global1.b), global1.c, global1.c.x), arg_1.d);
    let var_1 = var_0.c.zwy;
    let var_2 = func_2(_wgslsmith_f_op_f32(-var_0.c.x), arg_1, func_2(global1.d, Struct_1(firstTrailingBit(arg_1.a) ^ ~4294967295u, ~_wgslsmith_mod_vec2_u32(arg_1.b, arg_3.zx), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.c.x, global1.d, 1613f, 188f))))), -878f), func_2(1000f, arg_1, arg_1, -1690f), var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -646f) - 732f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1000f)))))));
    let var_3 = arg_1;
    return func_2(arg_1.c.x, func_2(var_2.c.x, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d)), func_2(_wgslsmith_f_op_f32(global1.d * 477f), Struct_1(arg_1.b.x, vec2<u32>(1u, 4294967295u), var_0.c, 1219f), func_2(479f, Struct_1(global1.a, vec2<u32>(u_input.b, u_input.b), vec4<f32>(arg_1.d, -672f, arg_1.c.x, -359f), -1879f), Struct_1(arg_3.x, vec2<u32>(u_input.b, 136780u), vec4<f32>(var_2.c.x, var_1.x, -1000f, 2468f), 757f), arg_1.d), _wgslsmith_f_op_f32(-var_1.x)), func_2(-664f, Struct_1(arg_0, vec2<u32>(var_2.b.x, 4294967295u), global0[_wgslsmith_index_u32(0u, 21u)], -1000f), func_2(arg_1.c.x, arg_1, Struct_1(var_2.b.x, vec2<u32>(25415u, 6327u), vec4<f32>(var_0.c.x, var_3.c.x, 1313f, -823f), -857f), 328f), var_3.d), var_0.d), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1622f)), var_2, Struct_1(func_3(arg_1, vec3<bool>(false, true, false), 0u), arg_1.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_1.x, -112f, var_1.x)), _wgslsmith_f_op_f32(trunc(global1.c.x))), _wgslsmith_div_f32(var_3.c.x, 769f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.d, _wgslsmith_f_op_f32(f32(-1f) * -214f)) * var_0.c.x)), arg_1, _wgslsmith_f_op_f32(arg_1.c.x - arg_1.d));
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_1 {
    global1 = func_5(17992u, Struct_1(firstLeadingBit((global1.b.x << (100924u % 32u)) ^ 4294967295u), ~global1.b & ~(~global1.b), global0[_wgslsmith_index_u32(~(~1u), 21u)], -1295f), ~max(countOneBits(vec2<i32>(u_input.d, 4441i)), ~u_input.c.zy), ~(vec3<u32>(global1.b.x, arg_1.a, arg_1.b.x) ^ vec3<u32>(global1.a, arg_0.x, 8383u)) & vec3<u32>(select(u_input.b, func_2(-978f, Struct_1(arg_0.x, vec2<u32>(0u, global1.b.x), vec4<f32>(global1.c.x, 1332f, 595f, -173f), global1.c.x), arg_1, arg_1.c.x).a, false), _wgslsmith_div_u32(func_2(arg_1.d, arg_1, Struct_1(3037u, arg_0, arg_1.c, -995f), 731f).a, 4294967295u), ~41876u));
    let var_0 = arg_1;
    var var_1 = all(!select(vec3<bool>(true, global1.d == 1497f, all(vec3<bool>(false, false, false))), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true), true));
    var_1 = (((_wgslsmith_f_op_f32(trunc(578f)) >= _wgslsmith_f_op_f32(1349f - 1000f)) | true) || !(!all(vec4<bool>(true, false, true, true)))) & false;
    global1 = func_5(arg_1.a, Struct_1(34992u, ~var_0.b, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.c + vec4<f32>(var_0.d, var_0.c.x, -1000f, 634f)) * _wgslsmith_div_vec4_f32(var_0.c, vec4<f32>(arg_1.d, var_0.c.x, 1038f, -693f))))), arg_1.d), -u_input.c.xx, _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(30843u, arg_0.x, 4294967295u), vec3<u32>(56421u, 1u, arg_1.a) << (vec3<u32>(8519u, 4294967295u, global1.a) % vec3<u32>(32u))), vec3<u32>(min(global1.a, 4294967295u), _wgslsmith_div_u32(var_0.a, u_input.b), global1.a)), ~(~vec3<u32>(arg_0.x, 0u, global1.a))));
    return Struct_1(_wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global1.a, arg_1.a, 82618u, 61062u), vec4<u32>(global1.b.x, 70597u, 1u, global1.a)), ~vec4<u32>(arg_0.x, 36761u, 0u, u_input.b)), _wgslsmith_mult_u32(global1.a, firstLeadingBit(0u))), ~arg_1.a), select(~var_0.b, arg_0, select(false, true, firstTrailingBit(u_input.b) > reverseBits(global1.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(268f, arg_1.c.x, -454f, global1.c.x))) - _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(firstTrailingBit(var_0.b.x), 21u)] + vec4<f32>(var_0.c.x, arg_1.d, global1.c.x, arg_1.d)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2060f - -145f), _wgslsmith_f_op_f32(trunc(-459f))));
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    global1 = arg_1;
    var var_0 = func_6(~select(min(vec2<u32>(1u, 1u), global1.b), min(vec2<u32>(u_input.b, u_input.b), vec2<u32>(4294967295u, 26282u)), true) | arg_0.b, arg_0);
    var var_1 = firstLeadingBit(countOneBits(var_0.a));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(global1.b, func_5(_wgslsmith_add_u32(u_input.b, u_input.b), Struct_1(4294967295u, global1.b, _wgslsmith_f_op_vec4_f32(-global1.c), _wgslsmith_div_f32(global1.c.x, global1.c.x)), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(u_input.a.yy, u_input.c.yy), func_1(u_input.c.yz)), (vec3<u32>(global1.a, 1177u, global1.a) | vec3<u32>(34223u, global1.b.x, 4294967295u)) | (vec3<u32>(u_input.b, u_input.b, u_input.b) | vec3<u32>(1u, 4294967295u, 38738u)))), func_5(~abs(4294967295u) ^ ~(~global1.a), func_2(func_6(~vec2<u32>(global1.b.x, 41383u), func_6(global1.b, Struct_1(u_input.b, vec2<u32>(u_input.b, 59647u), global1.c, 1000f))).c.x, Struct_1(u_input.b, abs(vec2<u32>(52533u, 10460u)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1469f, -1549f, global1.c.x, -612f), vec4<f32>(488f, 1992f, 2117f, -264f))), -507f), Struct_1(u_input.b, global1.b, _wgslsmith_div_vec4_f32(vec4<f32>(global1.c.x, global1.d, 1492f, global1.d), vec4<f32>(global1.c.x, global1.c.x, -301f, global1.d)), func_2(global1.c.x, Struct_1(4294967295u, vec2<u32>(4294967295u, 53423u), vec4<f32>(-1009f, global1.d, -441f, -716f), global1.d), Struct_1(1u, global1.b, vec4<f32>(global1.d, global1.d, -1409f, global1.d), 359f), -514f).c.x), 166f), -_wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.d, u_input.d), -u_input.a.zz), vec3<u32>(u_input.b, _wgslsmith_mult_u32(18040u, global1.b.x) ^ _wgslsmith_mod_u32(u_input.b, 4294967295u), reverseBits(~1u))), true);
    global0 = array<vec4<f32>, 21>();
    let var_1 = -u_input.a.ww;
    let var_2 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_7(var_0, var_0, false).d)) == global1.d);
    global1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-_wgslsmith_add_i32(u_input.a.x, var_1.x) >> (~_wgslsmith_sub_u32(4294967295u, global1.b.x) % 32u)));
}

