struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
    c: bool,
    d: bool,
    e: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<i32> = vec2<i32>(30950i, i32(-2147483648));

var<private> global2: array<f32, 30>;

var<private> global3: i32;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    global2 = array<f32, 30>();
    global2 = array<f32, 30>();
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(648f, global2[_wgslsmith_index_u32(1u, 30u)])), 855f));
    let var_0 = Struct_2(1077f, select(-1i, select(40503i, global1.x, select(false, true, true)), _wgslsmith_f_op_f32(min(260f, 909f)) == global2[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.d, u_input.d, u_input.d), vec4<u32>(u_input.d, 0u, u_input.d, u_input.d))), 30u)]), Struct_1(13366u));
    let var_1 = Struct_3(-5729i, vec4<i32>(~_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(2147483647i, var_0.b, u_input.a, 50250i)), firstLeadingBit(vec4<i32>(u_input.a, var_0.b, 16481i, var_0.b))), global1.x ^ global1.x, ~(~var_0.b), 72750i), true, false, min(firstTrailingBit(~vec3<u32>(var_0.c.a, 33919u, u_input.d)), min(vec3<u32>(~3880u, ~u_input.d, 1u), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.d, var_0.c.a, u_input.d), select(vec3<u32>(36267u, 21422u, u_input.d), vec3<u32>(u_input.d, 23381u, 4294967295u), false)))));
    return 1u;
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: i32) -> vec3<u32> {
    global2 = array<f32, 30>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-919f, global2[_wgslsmith_index_u32(1u, 30u)]))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(305f, arg_0)), vec2<bool>(arg_1, arg_1))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-175f, global2[_wgslsmith_index_u32(19274u, 30u)]) + vec2<f32>(216f, 615f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1236f, arg_0)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(arg_0)), global2[_wgslsmith_index_u32(u_input.d, 30u)]))));
    let var_1 = Struct_1(select(0u, u_input.d, true));
    global3 = u_input.b.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_0 + vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(var_0.x, -1026f)))), var_0.x))));
    return vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, var_1.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(82671u, 1u), vec2<u32>(0u, 1u), vec2<u32>(10861u, 0u))) & ~func_3(), _wgslsmith_mod_u32(u_input.d, max(abs(~u_input.d), reverseBits(countOneBits(1u)))), u_input.d);
}

fn func_4(arg_0: vec3<u32>) -> u32 {
    global1 = u_input.b << (arg_0.yx % vec2<u32>(32u));
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(675f)), -115f))))));
    global1 = u_input.b;
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -1194f, global2[_wgslsmith_index_u32(u_input.d, 30u)], global2[_wgslsmith_index_u32(0u, 30u)]), vec4<f32>(global2[_wgslsmith_index_u32(arg_0.x, 30u)], -1894f, -1128f, -690f)))), vec4<f32>(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(6311u, 1u), 30u)], _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(u_input.d, 30u)], global2[_wgslsmith_index_u32(arg_0.x, 30u)], true)), _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(4294967295u, 30u)], 870f)), _wgslsmith_div_f32(1131f, 898f))))));
    global3 = _wgslsmith_div_i32(-31876i, -1i);
    return 64245u;
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = vec4<u32>(0u, select(~18312u, 1u, true), ~(~u_input.d), func_4(func_2(global2[_wgslsmith_index_u32(arg_1.a >> (17399u % 32u), 30u)], arg_2.x, -global1.x) ^ ((vec3<u32>(4294967295u, 4294967295u, 0u) << (vec3<u32>(u_input.d, u_input.d, arg_0.a.a) % vec3<u32>(32u))) << (vec3<u32>(85437u, arg_1.a, 6041u) % vec3<u32>(32u)))));
    global3 = _wgslsmith_mod_i32(_wgslsmith_div_i32(arg_0.b.x, 0i), _wgslsmith_sub_i32(arg_0.b.x, ~(~(-1i)) >> (var_0.x % 32u)));
    let var_1 = arg_0.a;
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(44343u, 30u)]))))), _wgslsmith_div_f32(1014f, _wgslsmith_f_op_f32(max(1655f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 30u)] + -587f)))))));
    let var_3 = Struct_1(var_0.x);
    return arg_0.a;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: f32) -> vec4<i32> {
    global1 = u_input.b;
    let var_0 = select(vec3<bool>(any(vec2<bool>(true, true)), !(!(arg_2 == arg_2)), (true && any(vec2<bool>(arg_1.x, false))) || (true || (true | arg_1.x))), vec3<bool>(arg_1.x, (min(1u, arg_0.a) != 56597u) || (select(false, arg_1.x, false) | all(vec3<bool>(arg_1.x, arg_1.x, arg_1.x))), all(select(vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false), !arg_1.x))), select(vec3<bool>(arg_1.x, false, 8476u == max(u_input.d, 1u)), !select(vec3<bool>(false, false, true), vec3<bool>(false, arg_1.x, arg_1.x), arg_0.a > 74870u), vec3<bool>(all(select(vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, false, false, false), vec4<bool>(arg_1.x, false, true, arg_1.x))), arg_1.x, false)));
    let var_1 = func_1(Struct_4(Struct_1(~func_2(-237f, arg_1.x, global1.x).x), _wgslsmith_div_vec2_i32(u_input.b, vec2<i32>(u_input.a, 61041i))), Struct_1(27330u), var_0.xz).a;
    let var_2 = func_1(Struct_4(arg_0, _wgslsmith_mod_vec2_i32(~vec2<i32>(29571i, -60117i), -(~vec2<i32>(-12722i, 2147483647i)))), Struct_1(func_3()), arg_1);
    global3 = -min(_wgslsmith_dot_vec2_i32(firstLeadingBit(u_input.b), u_input.b), ~(-22171i)) | (select(-1i, countOneBits(_wgslsmith_mod_i32(u_input.a, -1i)), true) ^ -((53460i | global1.x) & global1.x));
    return max(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.x, global1.x, u_input.b.x, _wgslsmith_mod_i32(global1.x, u_input.c)), ~vec4<i32>(u_input.b.x, global1.x, -5012i, -16947i) | _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, global1.x, -1i, u_input.c), vec4<i32>(u_input.c, global1.x, 21472i, global1.x))) >> (vec4<u32>(~(~var_2.a), ~func_1(Struct_4(Struct_1(13809u), vec2<i32>(-72244i, 0i)), var_2, var_0.zx).a, u_input.d, arg_0.a) % vec4<u32>(32u)), vec4<i32>(u_input.a, ~((global1.x | -23970i) << (0u % 32u)), 1i, u_input.a));
}

fn func_6(arg_0: vec4<bool>, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_4) -> bool {
    var var_0 = arg_3.a;
    var var_1 = Struct_3(2147483647i, vec4<i32>(func_5(func_1(arg_3, Struct_1(arg_3.a.a), select(arg_0.yx, arg_0.xx, vec2<bool>(true, arg_0.x))), !arg_0.ww, _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(arg_1, 30u)]))).x, abs(3864i), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, arg_2.x, 2147483647i), vec3<i32>(-1i, arg_2.x, arg_2.x) ^ arg_2.xzy), ~vec3<i32>(1i, 13654i, 5809i)), _wgslsmith_dot_vec3_i32(arg_2.yyz, min(-vec3<i32>(22576i, -1i, u_input.c), ~vec3<i32>(13835i, 0i, global1.x)))), false, false, ~vec3<u32>(1u, _wgslsmith_add_u32(87560u, 21153u), _wgslsmith_div_u32(abs(arg_3.a.a), max(0u, arg_1))));
    var_0 = func_1(arg_3, arg_3.a, vec2<bool>(true, true));
    global2 = array<f32, 30>();
    global3 = ~var_1.b.x;
    return true;
}

fn func_7(arg_0: bool, arg_1: u32) -> Struct_2 {
    global2 = array<f32, 30>();
    global2 = array<f32, 30>();
    var var_0 = ~(vec3<i32>(_wgslsmith_sub_i32(1i, max(global1.x, global1.x)), 1238i, global1.x ^ _wgslsmith_div_i32(global1.x, -2147483647i)) & (max(vec3<i32>(2147483647i, u_input.b.x, global1.x), ~vec3<i32>(-1i, -7819i, u_input.b.x)) >> (_wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, 49105u, 28296u), _wgslsmith_mult_vec3_u32(vec3<u32>(22860u, u_input.d, arg_1), vec3<u32>(18524u, 42673u, 38677u)), reverseBits(vec3<u32>(arg_1, 0u, u_input.d))) % vec3<u32>(32u))));
    let var_1 = Struct_4(Struct_1(_wgslsmith_sub_u32(~1u, ~arg_1)), vec2<i32>(_wgslsmith_sub_i32(-41015i, u_input.b.x), reverseBits(_wgslsmith_clamp_i32(~(-6779i), -1i, _wgslsmith_mod_i32(global1.x, -21501i)))));
    var var_2 = vec2<u32>(abs(_wgslsmith_div_u32(abs(var_1.a.a), ~1207u) | u_input.d), _wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, ~select(var_1.a.a, u_input.d, true)), ~4294967295u));
    return Struct_2(_wgslsmith_div_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, arg_1, var_2.x), vec3<u32>(arg_1, var_1.a.a, 6468u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, var_2.x, 4180u), vec3<u32>(63182u, u_input.d, 59109u), vec3<u32>(36170u, 4983u, var_1.a.a))), 30u)], _wgslsmith_div_f32(global2[_wgslsmith_index_u32(var_2.x, 30u)], _wgslsmith_f_op_f32(max(1676f, global2[_wgslsmith_index_u32(0u, 30u)])))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(11669u, 30u)])), global2[_wgslsmith_index_u32(4294967295u, 30u)])), var_1.b.x, Struct_1(~_wgslsmith_sub_u32(4294967295u ^ u_input.d, var_1.a.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~abs(_wgslsmith_mult_vec4_i32(firstTrailingBit(-vec4<i32>(global1.x, global1.x, global1.x, u_input.a)), abs(select(vec4<i32>(u_input.a, -1i, global1.x, u_input.a), vec4<i32>(-17318i, global1.x, u_input.a, global1.x), vec4<bool>(true, false, false, true)))));
    let var_1 = ~_wgslsmith_mult_vec4_i32(-vec4<i32>(global1.x, -2147483647i, -4842i, 37498i) ^ max(-vec4<i32>(-1i, 0i, -49728i, -13798i), vec4<i32>(u_input.b.x, -2147483647i, 0i, -9814i)), abs(min(max(vec4<i32>(var_0.x, -18689i, 1339i, -61639i), vec4<i32>(31906i, var_0.x, 28109i, var_0.x)), min(vec4<i32>(-2147483647i, var_0.x, u_input.b.x, 2147483647i), vec4<i32>(var_0.x, u_input.a, -1i, 2147483647i)))));
    var var_2 = func_7(func_6(vec4<bool>(true, true, var_1.x < var_1.x, true), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(21789u, u_input.d))), func_5(func_1(Struct_4(Struct_1(0u), var_1.wy), Struct_1(u_input.d), vec2<bool>(true, false)), vec2<bool>(true, false), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(38570u, 30u)])), Struct_4(Struct_1(1u), _wgslsmith_sub_vec2_i32(var_1.xx, vec2<i32>(19726i, u_input.a)))) | false, u_input.d);
    let var_3 = func_7(func_6(!vec4<bool>(any(vec4<bool>(false, true, false, false)), any(vec2<bool>(false, false)), false, false), ~(~var_2.c.a), -var_1, Struct_4(var_2.c, vec2<i32>(-1i) * -vec2<i32>(56444i, -39970i))), 36348u);
    let var_4 = var_3.a;
    let var_5 = Struct_3(var_0.x, -(~var_1), !(var_2.c.a < 1u) & true, var_3.c.a < ~46591u, _wgslsmith_clamp_vec3_u32(select(func_2(global2[_wgslsmith_index_u32(var_3.c.a, 30u)], true, reverseBits(var_3.b)), _wgslsmith_div_vec3_u32(vec3<u32>(1u, var_3.c.a, var_3.c.a), ~vec3<u32>(1u, var_3.c.a, 24641u)), vec3<bool>(true, true, true)), ~select(vec3<u32>(17296u, 27895u, 0u), vec3<u32>(95991u, 1u, u_input.d), true) & _wgslsmith_mod_vec3_u32(~vec3<u32>(var_3.c.a, 40849u, var_2.c.a), vec3<u32>(var_3.c.a, var_2.c.a, 1u)), countOneBits(vec3<u32>(u_input.d, u_input.d, 44084u) ^ vec3<u32>(var_3.c.a, 1u, 1u)) >> (vec3<u32>(var_2.c.a, _wgslsmith_mult_u32(41272u, var_2.c.a), 4294967295u) % vec3<u32>(32u))));
    var var_6 = vec2<i32>(58851i, (_wgslsmith_div_i32(_wgslsmith_sub_i32(-2147483647i, u_input.a), 1i) << (_wgslsmith_mod_u32(14336u, firstTrailingBit(4294967295u)) % 32u)) & (select(2147483647i, countOneBits(-26848i), false) ^ var_1.x));
    let var_7 = Struct_4(Struct_1(~4294967295u), ~(-_wgslsmith_mult_vec2_i32(reverseBits(var_0.zx), var_1.yx)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.wx, _wgslsmith_f_op_f32(f32(-1f) * -1501f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a) * _wgslsmith_f_op_f32(min(-1430f, -755f))) + var_2.a), firstTrailingBit(vec3<i32>(u_input.b.x, -61125i, var_0.x)), 1u);
}

