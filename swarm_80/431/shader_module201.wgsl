struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: Struct_2,
    e: vec4<f32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: Struct_2;

var<private> global2: array<i32, 5> = array<i32, 5>(11750i, 0i, 0i, i32(-2147483648), 31715i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec3<bool> {
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(-273f, global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, -246f, -1155f)))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(global1.b.x - global1.b.x), _wgslsmith_f_op_f32(1024f + -178f), _wgslsmith_f_op_f32(ceil(global1.b.x))), vec3<f32>(global1.b.x, _wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(231f + 1902f))))));
    var var_1 = vec2<bool>(true, !all(global0.xz));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, -533f, 409f, 390f))), vec4<f32>(global1.b.x, 148f, -1300f, -1000f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(step(var_0.x, global1.b.x)), _wgslsmith_f_op_f32(211f - global1.b.x), 1631f, _wgslsmith_div_f32(var_0.x, global1.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(510f, global1.b.x, var_0.x, -1474f))))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-815f, global1.b.x, 271f, global1.b.x) - vec4<f32>(global1.b.x, 967f, global1.b.x, var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, -593f, 363f, 1025f))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1037f + 1331f)), global1.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(765f)))), 1899f)));
    global2 = array<i32, 5>();
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, global1.b.x, _wgslsmith_f_op_f32(sign(2601f)), _wgslsmith_f_op_f32(select(-455f, var_2.x, true))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, var_2.x, var_2.x, global1.b.x), vec4<f32>(var_0.x, 1779f, -170f, global1.b.x)))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1022f, var_2.x, var_0.x) + vec4<f32>(614f, var_2.x, -2317f, -281f)), vec4<f32>(933f, -611f, 753f, -714f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 273f, 391f, 1230f) * vec4<f32>(1267f, global1.b.x, var_0.x, 573f))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -709f, -473f, 449f) + vec4<f32>(var_0.x, var_0.x, -160f, global1.b.x)))))));
    return select(vec3<bool>(!any(vec4<bool>(false, var_1.x, global0.x, var_1.x)), false, true), global1.a.b.zwz, select(vec3<bool>(false, !all(vec4<bool>(var_1.x, global0.x, false, true)), true), select(!(!vec3<bool>(false, var_1.x, true)), vec3<bool>(true && var_1.x, global0.x | global0.x, true), true), true));
}

fn func_4(arg_0: vec3<bool>, arg_1: u32, arg_2: vec2<u32>) -> vec3<i32> {
    let var_0 = Struct_3(vec2<u32>(_wgslsmith_add_u32(global1.a.c, 4294967295u), 42895u & _wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, arg_1, 0u), 13545u)), _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(min(select(vec2<i32>(global1.a.a, 4588i), vec2<i32>(u_input.e, global1.a.a), global1.a.b.ww), vec2<i32>(global1.a.a, -1i)), select(select(vec2<i32>(global1.a.a, global1.c.x), global1.c.xw, vec2<bool>(true, false)), ~vec2<i32>(-1i, global1.c.x), arg_0.x)), _wgslsmith_mod_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(106810u, 5u)], min(-1i, 2147483647i)), _wgslsmith_mult_vec2_i32(firstTrailingBit(u_input.a), abs(vec2<i32>(0i, u_input.e))))), global1.c.wxy ^ vec3<i32>(~25406i >> (0u % 32u), -(global2[_wgslsmith_index_u32(arg_1, 5u)] & global2[_wgslsmith_index_u32(0u, 5u)]), 1i), Struct_2(Struct_1(global2[_wgslsmith_index_u32(~reverseBits(34107u), 5u)], !select(vec4<bool>(false, false, global1.a.b.x, global0.x), global1.a.b, vec4<bool>(global1.a.b.x, false, global1.a.b.x, true)), 1u), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.x, -2349f) * global1.b) + _wgslsmith_f_op_vec2_f32(trunc(global1.b))))), vec4<i32>(-firstTrailingBit(-11826i), u_input.b, -17912i, _wgslsmith_mult_i32(-global2[_wgslsmith_index_u32(4294967295u, 5u)], global1.a.a | -29141i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, global1.b.x, -1347f, global1.b.x))))) + vec4<f32>(_wgslsmith_f_op_f32(abs(global1.b.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(global1.b.x)))), _wgslsmith_f_op_f32(sign(global1.b.x)), _wgslsmith_f_op_f32(-global1.b.x))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(round(var_0.d.b.x)), var_0.d.b.x);
    let var_2 = var_0;
    global1 = var_2.d;
    var var_3 = global1.a.b;
    return -reverseBits(firstTrailingBit(countOneBits(countOneBits(vec3<i32>(13979i, -4580i, global1.c.x)))));
}

fn func_2(arg_0: u32) -> vec2<f32> {
    let var_0 = u_input.c;
    global2 = array<i32, 5>();
    var var_1 = min(~global1.c.yyy >> (vec3<u32>(~35137u ^ _wgslsmith_sub_u32(arg_0, arg_0), 1u, 69768u ^ ~u_input.c) % vec3<u32>(32u)), countOneBits(select(-global1.c.xzy | global1.c.wzw, func_4(func_3(), _wgslsmith_dot_vec3_u32(vec3<u32>(19475u, global1.a.c, global1.a.c), vec3<u32>(4294967295u, var_0, 69689u)), vec2<u32>(u_input.c, 1u)), any(!global1.a.b))));
    var var_2 = 485f;
    global2 = array<i32, 5>();
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.b.x, 405f)), -110f);
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: Struct_5, arg_3: vec2<bool>) -> Struct_1 {
    global1 = Struct_2(global1.a, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_2(arg_2.d)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(global1.b + vec2<f32>(-505f, arg_2.a)))))), firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(-15842i << (u_input.c % 32u), 971i, global1.c.x, -2147483647i), _wgslsmith_mod_vec4_i32(global1.c, -arg_2.c), firstLeadingBit(vec4<i32>(global1.a.a, 2147483647i, global1.a.a, arg_2.b.x)))));
    global0 = func_3();
    global0 = !(!select(vec3<bool>(true, global1.a.b.x, arg_3.x | global0.x), !(!global1.a.b.zzz), select(select(global1.a.b.yxx, vec3<bool>(global1.a.b.x, false, arg_3.x), false), global1.a.b.ywz, func_3())));
    var var_0 = _wgslsmith_f_op_f32(max(1426f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_0, arg_0)))))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-arg_2.a), -762f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-135f)) + _wgslsmith_f_op_f32(f32(-1f) * -1539f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - -403f))) + _wgslsmith_f_op_f32(f32(-1f) * -270f)));
    return global1.a;
}

fn func_5(arg_0: Struct_1) -> Struct_4 {
    global0 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -605f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x)), global1.a.b.x))), true, Struct_5(881f, vec4<i32>(1i, global2[_wgslsmith_index_u32(~1u, 5u)], _wgslsmith_mult_i32(1i, -4537i), i32(-1i) * -global1.c.x), vec4<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(global1.c.x, -46246i), vec2<i32>(global2[_wgslsmith_index_u32(u_input.c, 5u)], global1.c.x)), (u_input.a.x | u_input.d) ^ global1.c.x, 2147483647i, 88638i), ~global1.a.c), select(func_1(-1596f, !arg_0.b.x, Struct_5(_wgslsmith_f_op_f32(-global1.b.x), reverseBits(global1.c), vec4<i32>(arg_0.a, 18445i, global1.a.a, global1.a.a), 29808u), func_3().zx).b.wx, !global1.a.b.zw, func_3().zz)).b.wxx;
    let var_0 = select(max(_wgslsmith_add_i32(firstTrailingBit(countOneBits(-1i)), arg_0.a), max(_wgslsmith_dot_vec4_i32(vec4<i32>(-5156i, -46545i, 41327i, global1.a.a), global1.c ^ global1.c), min(43373i, ~global2[_wgslsmith_index_u32(0u, 5u)]))), _wgslsmith_dot_vec4_i32(global1.c, min(global1.c | min(global1.c, global1.c), global1.c)), ((arg_0.b.x && !global0.x) != !(global1.b.x < -482f)) && false);
    global1 = Struct_2(arg_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-480f, 866f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-229f, global1.b.x) * vec2<f32>(global1.b.x, global1.b.x)))), _wgslsmith_f_op_vec2_f32(global1.b - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global1.b.x))), !func_1(global1.b.x, arg_0.b.x, Struct_5(-293f, vec4<i32>(var_0, global1.c.x, -812i, var_0), global1.c, 46576u), arg_0.b.yy).b.xw)) - vec2<f32>(_wgslsmith_f_op_f32(round(895f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.b.x)) + -117f))), -vec4<i32>(19725i, _wgslsmith_div_i32(arg_0.a, global2[_wgslsmith_index_u32(u_input.c, 5u)]), arg_0.a, func_1(488f, global1.a.b.x, Struct_5(global1.b.x, vec4<i32>(arg_0.a, 24449i, 0i, var_0), global1.c, 0u), global1.a.b.zy).a) & _wgslsmith_mult_vec4_i32(global1.c, select(global1.c, ~vec4<i32>(arg_0.a, 32877i, global2[_wgslsmith_index_u32(u_input.c, 5u)], -1i), true)));
    global2 = array<i32, 5>();
    let var_1 = ~countOneBits(~min(firstTrailingBit(vec3<u32>(arg_0.c, global1.a.c, 42842u)), vec3<u32>(15392u, 4294967295u, 1u)));
    return Struct_4(true, Struct_2(func_1(_wgslsmith_div_f32(global1.b.x, global1.b.x), true, Struct_5(_wgslsmith_f_op_f32(-117f * -430f), max(vec4<i32>(arg_0.a, var_0, -1i, global2[_wgslsmith_index_u32(4994u, 5u)]), global1.c), global1.c, 1u), global0.zx), _wgslsmith_f_op_vec2_f32(ceil(global1.b)), vec4<i32>(-1i) * -global1.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.e, vec4<bool>(global1.a.b.x | (false || global1.a.b.x), true, global0.x, true), ~u_input.c);
    var var_1 = func_5(func_1(global1.b.x, !all(select(var_0.b.yzx, var_0.b.wyz, vec3<bool>(false, global0.x, global0.x))), Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x)), global1.c | -global1.c, global1.c, firstLeadingBit(max(global1.a.c, 1u))), vec2<bool>(var_0.b.x, global0.x)));
    var var_2 = global1.a;
    var var_3 = Struct_1(global1.a.a, !func_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.b.b.x))), true, Struct_5(_wgslsmith_f_op_f32(-global1.b.x), select(vec4<i32>(2147483647i, 9102i, global1.c.x, var_2.a), vec4<i32>(u_input.e, u_input.e, 1i, global1.a.a), var_2.b), ~var_1.b.c, var_1.b.a.c), func_1(-344f, func_3().x, Struct_5(var_1.b.b.x, global1.c, vec4<i32>(1i, 59030i, -30607i, var_2.a), 4294967295u), func_5(Struct_1(global1.c.x, var_1.b.a.b, var_0.c)).b.a.b.ww).b.zy).b, 80888u);
    var var_4 = Struct_4(var_1.b.a.b.x, func_5(global1.a).b);
    global0 = vec3<bool>(true, global0.x, _wgslsmith_f_op_f32(var_4.b.b.x - var_4.b.b.x) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-290f, global1.b.x, func_3().x))));
    global1 = Struct_2(func_1(var_4.b.b.x, func_1(_wgslsmith_f_op_f32(max(global1.b.x, -1016f)), false, Struct_5(var_4.b.b.x, vec4<i32>(var_2.a, global2[_wgslsmith_index_u32(var_2.c, 5u)], var_3.a, 37531i), var_4.b.c, global1.a.c | global1.a.c), vec2<bool>(true, global1.a.b.x)).b.x, Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.b.x)), select(vec4<i32>(15571i, var_3.a, var_1.b.c.x, var_3.a), vec4<i32>(var_0.a, var_4.b.a.a, global1.c.x, -17735i), var_0.b.x), vec4<i32>(global1.a.a, max(var_0.a, global2[_wgslsmith_index_u32(var_4.b.a.c, 5u)]), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, var_2.a, 1i), vec3<i32>(var_0.a, -2147483647i, 14597i)), global1.c.x), var_4.b.a.c), vec2<bool>(!(!var_4.b.a.b.x), var_3.a < _wgslsmith_dot_vec4_i32(var_1.b.c, vec4<i32>(var_4.b.a.a, -15967i, global2[_wgslsmith_index_u32(var_1.b.a.c, 5u)], var_4.b.c.x)))), vec2<f32>(_wgslsmith_f_op_f32(ceil(global1.b.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -157f)))), firstTrailingBit(abs(abs(vec4<i32>(var_0.a, var_4.b.c.x, -30455i, var_2.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(1226f, global1.b.x);
}

