struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec3<f32>,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: Struct_3,
    d: Struct_3,
    e: vec3<i32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-521f, -1270f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_5) -> f32 {
    var var_0 = Struct_2(_wgslsmith_add_vec2_u32(vec2<u32>(firstTrailingBit(select(0u, 1u, arg_0.x)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(26211u, 0u, 0u, 458u), vec4<u32>(59530u, 1u, 4294967295u, 96819u))), vec2<u32>(10711u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 622u, 11093u), vec4<u32>(24177u, 1u, 31829u, 10503u)), 0u)), ~(-(countOneBits(arg_1.a.a.xz) ^ vec2<i32>(arg_1.a.a.x, arg_1.a.a.x))), _wgslsmith_div_vec4_i32(u_input.b, ~u_input.b), Struct_1(arg_1.a.a, vec2<i32>(arg_1.a.a.x, min(-2147483647i >> (0u % 32u), 0i)), vec3<i32>(abs(u_input.a) >> (select(89613u, 17295u, arg_0.x) % 32u), i32(-1i) * -63422i, -arg_1.a.c.x), -1944f), select(!select(!vec4<bool>(false, arg_0.x, arg_0.x, false), vec4<bool>(arg_0.x, false, false, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x)), !select(!vec4<bool>(true, arg_0.x, arg_0.x, false), vec4<bool>(false, false, false, false), select(vec4<bool>(false, arg_0.x, true, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, true, true), true)), !arg_0.x));
    var var_1 = Struct_5(var_0.d);
    var var_2 = Struct_4(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.d) * -1412f), Struct_3(true, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(var_1.a.c.x, -57427i, arg_1.a.b.x), u_input.b.x), vec2<i32>(arg_1.a.c.x, var_0.d.a.x) >> (_wgslsmith_add_vec2_u32(var_0.a, vec2<u32>(779u, var_0.a.x)) % vec2<u32>(32u))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.a.d, 1667f, var_0.d.d))))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.d.d), _wgslsmith_f_op_f32(-var_1.a.d), global0.x)), Struct_1(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(var_1.a.a, vec3<i32>(2147483647i, 2147483647i, arg_1.a.a.x)), vec3<i32>(-28616i, var_0.c.x, u_input.a)), vec2<i32>(countOneBits(-1i), 1823i), ~select(vec3<i32>(-9775i, 13766i, 63939i), arg_1.a.c, var_0.e.xxw), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.d) - -1000f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.d, var_0.d.d, global0.x) * vec3<f32>(arg_1.a.d, var_0.d.d, var_1.a.d)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-821f, 365f, 149f)))))), Struct_3(1176f > global0.x, 32215i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.d.d - 1609f), var_1.a.d, -115f)), arg_1.a, vec3<f32>(_wgslsmith_f_op_f32(max(406f, _wgslsmith_f_op_f32(abs(-1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1601f)) * _wgslsmith_f_op_f32(arg_1.a.d * var_1.a.d)), _wgslsmith_f_op_f32(-global0.x))), abs(~reverseBits(firstLeadingBit(arg_1.a.a))));
    var_2 = Struct_4(var_0.e.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(205f * -752f))), var_2.c, var_2.c, firstTrailingBit(select(vec3<i32>(6347i, 2147483647i, -var_0.b.x), arg_1.a.a, !vec3<bool>(true, false, arg_0.x))));
    var_1 = arg_1;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x))) + _wgslsmith_f_op_f32(var_2.d.e.x - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - 1224f))))));
}

fn func_4(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_4, arg_3: vec2<f32>) -> vec3<f32> {
    global0 = vec2<f32>(-663f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(select(vec3<bool>(arg_2.d.a, true, true), vec3<bool>(arg_2.a, false, arg_2.d.a), vec3<bool>(true, arg_2.d.a, true)), Struct_5(Struct_1(vec3<i32>(7937i, -9564i, 19076i), vec2<i32>(arg_0, 333i), vec3<i32>(2147483647i, arg_0, 15871i), global0.x))))))));
    let var_0 = select(select(!select(vec3<bool>(true, arg_2.d.a, arg_2.c.a), select(vec3<bool>(true, true, true), vec3<bool>(true, arg_2.a, false), arg_2.d.a), arg_2.c.a), select(!(!vec3<bool>(arg_2.a, true, true)), select(vec3<bool>(false, arg_2.d.a, true), !vec3<bool>(false, arg_2.d.a, arg_2.d.a), select(vec3<bool>(true, arg_2.a, true), vec3<bool>(arg_2.a, arg_2.c.a, arg_2.a), vec3<bool>(arg_2.c.a, arg_2.d.a, arg_2.c.a))), arg_2.c.a), !(!vec3<bool>(false, arg_2.c.a, false))), vec3<bool>(arg_2.d.a, arg_2.a, false & select(true, true | arg_2.a, true)), !(!vec3<bool>(!arg_2.d.a, global0.x < arg_3.x, arg_2.a | true)));
    let var_1 = arg_2.d.a | true;
    let var_2 = _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~select(vec3<u32>(43823u, 65396u, 9318u), vec3<u32>(6901u, 44517u, 1u), var_1), vec3<u32>(1u, 1u, 1u)), vec3<u32>(42910u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(23093u, 1u), vec2<u32>(4294967295u, 53630u)), _wgslsmith_add_u32(_wgslsmith_add_u32(37510u, 41766u), _wgslsmith_dot_vec3_u32(vec3<u32>(38341u, 28683u, 17306u), vec3<u32>(1u, 22542u, 134219u))))), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(83475u, 4294967295u, 59625u, 3008u)), select(abs(vec4<u32>(23534u, 29377u, 4294967295u, 1u)), vec4<u32>(1u, 1u, 1u, 1u), var_0.x)) & (_wgslsmith_clamp_u32(1u, 1u, ~21965u) | 1u));
    var var_3 = _wgslsmith_clamp_vec2_u32(countOneBits(_wgslsmith_div_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(var_2, 61112u), vec2<u32>(var_2, 1u)), firstLeadingBit(max(vec2<u32>(4294967295u, var_2), vec2<u32>(var_2, var_2))))), vec2<u32>(4294967295u, 6934u), ~select(vec2<u32>(_wgslsmith_clamp_u32(var_2, 36859u, 4294967295u), 16092u), max(vec2<u32>(78748u, 4294967295u) & vec2<u32>(var_2, var_2), vec2<u32>(var_2, 62308u)), vec2<bool>(true, true)));
    return _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(arg_2.d.e.x, arg_2.c.c.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-359f - -1444f), _wgslsmith_f_op_f32(select(arg_3.x, -807f, false)))), -1566f), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.d.e.x, -856f, arg_2.b)))))));
}

fn func_2(arg_0: Struct_1) -> f32 {
    global0 = vec2<f32>(-1369f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.x)))));
    let var_0 = Struct_3(arg_0.c.x >= -1i, i32(-1i) * -2147483647i, _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(-arg_0.c.x, 1i, arg_0.b.x), u_input.b.x), u_input.b.yz, Struct_4(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<bool>(false, false, true), Struct_5(Struct_1(vec3<i32>(arg_0.a.x, u_input.b.x, 1i), vec2<i32>(-80140i, u_input.b.x), u_input.b.yzy, arg_0.d)))) - _wgslsmith_f_op_f32(abs(645f))), Struct_3(true, ~u_input.a, vec3<f32>(151f, arg_0.d, 514f), arg_0, vec3<f32>(global0.x, -655f, -579f)), Struct_3(select(false, false, true), 1i, _wgslsmith_f_op_vec3_f32(vec3<f32>(905f, global0.x, arg_0.d) * vec3<f32>(-2084f, -368f, global0.x)), arg_0, _wgslsmith_div_vec3_f32(vec3<f32>(-910f, 1057f, 2454f), vec3<f32>(arg_0.d, -753f, 424f))), ~(-u_input.b.xzz)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_0.d)), _wgslsmith_f_op_f32(ceil(689f))))))), Struct_1(u_input.b.wyy, reverseBits(u_input.b.yx), arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -459f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(673f, _wgslsmith_f_op_f32(1122f + -916f))), arg_0.d, arg_0.d) + vec3<f32>(-326f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.d * arg_0.d))), 128f)));
    let var_1 = vec4<u32>(~(~_wgslsmith_mod_u32(abs(4294967295u), 86595u)), ~4294967295u, min(_wgslsmith_div_u32(1u, select(~17384u, 1u, var_0.c.x > arg_0.d)), firstTrailingBit(1u)), _wgslsmith_clamp_u32(_wgslsmith_add_u32(26271u, 39731u >> (~4294967295u % 32u)), 1u, 4294967295u));
    var var_2 = _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -553f), arg_0.d)))))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(740f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1367f))) - _wgslsmith_f_op_f32(-var_0.c.x))));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(global0.x, -117f))));
}

fn func_1(arg_0: Struct_3) -> vec3<u32> {
    global0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-667f, _wgslsmith_f_op_f32(func_2(arg_0.d))) + vec2<f32>(480f, _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(global0.x * 808f))))));
    global0 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.x + arg_0.e.x) - 165f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1205f * global0.x)), false)))));
    global0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-792f, arg_0.d.d), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.e.xy * arg_0.e.yz) * vec2<f32>(global0.x, global0.x)))), vec2<bool>(10863i > arg_0.d.c.x, all(!vec3<bool>(arg_0.a, arg_0.a, arg_0.a)))))));
    global0 = arg_0.c.yy;
    global0 = arg_0.c.zy;
    return _wgslsmith_sub_vec3_u32(select(vec3<u32>(~4294967295u, 7837u, abs(4294967295u)), vec3<u32>(~4294967295u, ~0u, ~31393u), all(!vec4<bool>(arg_0.a, false, arg_0.a, arg_0.a))) | _wgslsmith_mult_vec3_u32(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 0u, 1u), vec3<u32>(4294967295u, 21642u, 1u))), firstTrailingBit(vec3<u32>(8653u, 4294967295u, 1u))), vec3<u32>(_wgslsmith_mult_u32(1u, ~(~1u)), ~(~reverseBits(57711u)), 79747u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1161f, global0.x) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.x - -340f)))))));
    var var_0 = (reverseBits(func_1(Struct_3(true, u_input.b.x, vec3<f32>(-1000f, 1000f, global0.x), Struct_1(u_input.b.zzx, u_input.b.wy, vec3<i32>(u_input.a, u_input.b.x, -1i), 497f), vec3<f32>(-737f, global0.x, 1000f))) ^ vec3<u32>(1u, 1u, 1u)) | vec3<u32>(105u, 1u, 33135u)) << (~(select(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(0u, 46983u, 5817u), vec3<bool>(false, false, false)) << (select(vec3<u32>(105566u, 17940u, 11439u), reverseBits(vec3<u32>(18370u, 39705u, 44982u)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false))) % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_1 = ~_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(~vec2<i32>(-32944i, u_input.b.x), u_input.b.zz), firstTrailingBit(_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, u_input.b.x), vec2<i32>(2147483647i, u_input.b.x)), ~u_input.b.xw)));
    var var_2 = Struct_3(true, abs(-(i32(-1i) * -var_1.x)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(vec3<i32>(u_input.a, -2147483647i, var_1.x), vec2<i32>(27058i, -14901i), u_input.b.xyy, global0.x)))), 736f, 1977f), Struct_1(min(select(select(u_input.b.xyw, u_input.b.zwz, vec3<bool>(true, true, true)), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, 30348i, 37034i), vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i)), vec3<bool>(true, true, true)), vec3<i32>(36223i & u_input.b.x, -var_1.x, var_1.x & -37208i)), u_input.b.wy | ~vec2<i32>(-1i, var_1.x), u_input.b.xyx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, 2199f) * vec3<f32>(global0.x, -1135f, 1828f)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.x, global0.x, global0.x)))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-1033f * global0.x), _wgslsmith_f_op_f32(-global0.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-151f, 130f, -1063f) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1599f, global0.x, -1274f)))))));
    let var_3 = Struct_3(true, 27587i, vec3<f32>(_wgslsmith_f_op_f32(-global0.x), var_2.d.d, var_2.e.x), Struct_1(min(-(~u_input.b.zzz), countOneBits(-vec3<i32>(1i, var_1.x, 18045i))), -vec2<i32>(var_1.x, min(29162i, 2147483647i)), var_2.d.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x + _wgslsmith_div_f32(733f, -177f)), var_2.d.d)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_2.c, var_2.e) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 603f, 217f)))) - _wgslsmith_f_op_vec3_f32(trunc(var_2.e))));
    let var_4 = Struct_5(var_2.d);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.yy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.a.d + 1501f)))), countOneBits(_wgslsmith_clamp_u32(1u, 0u >> (var_0.x % 32u), _wgslsmith_mod_u32(var_0.x, var_0.x)) | var_0.x), _wgslsmith_f_op_f32(var_3.e.x + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-530f)), _wgslsmith_f_op_f32(step(var_2.d.d, -610f))) - global0.x)));
}

