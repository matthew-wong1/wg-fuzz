struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec4<f32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 12> = array<vec3<f32>, 12>(vec3<f32>(260f, -337f, 568f), vec3<f32>(1124f, 364f, -474f), vec3<f32>(1000f, 1000f, -193f), vec3<f32>(-174f, -2567f, 485f), vec3<f32>(1414f, -1637f, 326f), vec3<f32>(1004f, 1064f, 710f), vec3<f32>(-1296f, 1892f, -333f), vec3<f32>(133f, -565f, 1276f), vec3<f32>(2032f, 2322f, 1922f), vec3<f32>(-1000f, -1133f, -1203f), vec3<f32>(2012f, 358f, 357f), vec3<f32>(521f, -739f, -1029f));

var<private> global1: vec4<bool>;

var<private> global2: f32;

var<private> global3: vec3<u32> = vec3<u32>(0u, 26578u, 29500u);

var<private> global4: Struct_1;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: bool) -> vec2<f32> {
    var var_0 = ~_wgslsmith_clamp_u32(101912u, firstLeadingBit(0u), ~_wgslsmith_sub_u32(29564u, global4.b)) | global3.x;
    global4 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-644f, 698f))) + vec2<f32>(319f, global4.c.x))))), global4.b, vec4<f32>(_wgslsmith_div_f32(global4.a.x, _wgslsmith_f_op_f32(step(global4.c.x, _wgslsmith_f_op_f32(trunc(global4.c.x))))), _wgslsmith_div_f32(1126f, -841f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-637f)))), global4.a.x), _wgslsmith_sub_vec4_i32(u_input.c, u_input.c));
    global2 = _wgslsmith_f_op_f32(min(1315f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.c.x))));
    let var_1 = arg_2;
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.c.x, -471f))), ~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(56189u, 33820u), vec2<u32>(global4.b, u_input.d.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global4.c - global4.c)), ~(~vec4<i32>(global4.d.x, _wgslsmith_add_i32(arg_0.x, global4.d.x), ~1i, firstTrailingBit(arg_0.x))));
    return _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global4.a.x, _wgslsmith_f_op_f32(var_2.c.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-861f, global4.c.x)), _wgslsmith_div_f32(2443f, global4.a.x))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> vec4<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(arg_0)), firstTrailingBit(21065u), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.c.x), -424f, _wgslsmith_f_op_f32(round(-1271f)), _wgslsmith_f_op_f32(arg_2.c.x + _wgslsmith_f_op_f32(f32(-1f) * -153f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global4.c * global4.c), arg_1.c)), !select(!vec4<bool>(true, false, global1.x, global1.x), !vec4<bool>(arg_3, global1.x, arg_3, true), select(vec4<bool>(true, global1.x, arg_3, true), vec4<bool>(global1.x, arg_3, global1.x, global1.x), vec4<bool>(arg_3, true, true, true))))), min(countOneBits(abs(~vec4<i32>(18284i, arg_2.d.x, -17445i, arg_1.d.x))), u_input.c));
    var var_1 = 1i;
    let var_2 = arg_2;
    var var_3 = _wgslsmith_f_op_f32(arg_1.a.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2344f * 272f) * _wgslsmith_f_op_vec2_f32(func_3(vec2<i32>(0i, arg_1.d.x), vec4<bool>(false, global1.x, global1.x, false), arg_3)).x)) * _wgslsmith_f_op_f32(-global4.c.x)));
    global0 = array<vec3<f32>, 12>();
    return _wgslsmith_f_op_vec4_f32(-var_2.c);
}

fn func_2(arg_0: vec3<f32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(-arg_0.yy);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-824f, var_0.x))), vec2<f32>(-624f, _wgslsmith_f_op_f32(var_0.x - global4.c.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-global4.c.xx))))), global3.x, _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_0))) + _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_div_vec2_i32(vec2<i32>(0i, u_input.c.x), global4.d.zy), vec4<bool>(global1.x, global1.x, true, true), false))), Struct_1(_wgslsmith_f_op_vec2_f32(func_3(vec2<i32>(global4.d.x, 0i), !vec4<bool>(global1.x, global1.x, global1.x, global1.x), global1.x || global1.x)), u_input.d.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(319f, 418f, var_0.x, -1370f)), select(-global4.d, -global4.d, vec4<bool>(global1.x, true, true, true))), Struct_1(arg_0.zz, 1u, _wgslsmith_div_vec4_f32(global4.c, _wgslsmith_f_op_vec4_f32(-global4.c)), ~global4.d), any(!select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(false, true, global1.x, global1.x), global1.x)))), global4.d);
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - -1052f), 1595f) - global4.a), ~firstTrailingBit(_wgslsmith_mod_u32(~u_input.d.x, global3.x | u_input.a)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-224f, _wgslsmith_f_op_f32(step(-2253f, _wgslsmith_f_op_f32(-global4.c.x))), -535f, var_1.a.x))), _wgslsmith_div_vec4_i32(vec4<i32>(1i, select(26194i, -1i, global1.x) & firstLeadingBit(var_1.d.x), _wgslsmith_mod_i32(global4.d.x, global4.d.x), _wgslsmith_dot_vec4_i32(global4.d >> (vec4<u32>(86195u, 67761u, u_input.a, u_input.d.x) % vec4<u32>(32u)), select(var_1.d, vec4<i32>(global4.d.x, u_input.c.x, var_1.d.x, global4.d.x), vec4<bool>(false, global1.x, global1.x, global1.x)))), _wgslsmith_sub_vec4_i32(~(~vec4<i32>(19i, -28308i, u_input.c.x, -1i)), ~(u_input.c | global4.d))));
    let var_3 = var_2;
    let var_4 = 4294967295u;
    return true;
}

fn func_1(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = !global1.x || !(_wgslsmith_clamp_i32(arg_1.x, _wgslsmith_add_i32(arg_2.d.x, 2147483647i), 0i) == 12632i);
    global3 = ~vec3<u32>(u_input.a, global3.x, ~_wgslsmith_add_u32(arg_2.b, ~global3.x));
    global2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1925f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.c.x, arg_2.a.x))))));
    global1 = select(!vec4<bool>(global1.x, var_0, 607f < _wgslsmith_f_op_f32(-global4.c.x), var_0), vec4<bool>(!func_2(_wgslsmith_f_op_vec3_f32(exp2(global0[_wgslsmith_index_u32(arg_2.b, 12u)]))), global1.x, true, true), true);
    var var_1 = select(!select(select(vec2<bool>(global1.x, false), global1.xz, global1.zy), vec2<bool>(var_0, !global1.x), all(vec2<bool>(var_0, false))), global1.xx, !(!select(select(global1.x, var_0, false), global4.b > 1u, func_2(global4.c.wyz))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global4.c - vec4<f32>(_wgslsmith_f_op_f32(arg_2.a.x - _wgslsmith_f_op_f32(-1000f - arg_2.c.x)), 790f, -662f, global4.a.x)) + _wgslsmith_f_op_vec4_f32(sign(global4.c)));
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    global4 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(arg_2.a)), 51470u, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_2.c, vec4<f32>(arg_2.a.x, -1999f, 1000f, global4.c.x)) * _wgslsmith_f_op_vec4_f32(global4.c * global4.c))))), select(min(arg_2.d, firstTrailingBit(arg_2.d)), vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.c.zx, vec2<i32>(-35563i, 36494i)), abs(u_input.c.x), ~(-12111i), i32(-1i) * -2147483647i), select(true, !global1.x, !arg_3)) | ~abs(u_input.c));
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_mult_vec2_i32(vec2<i32>(-22491i, u_input.c.x), vec2<i32>(-1i, 65456i)), vec4<bool>(false, arg_3, global1.x, false), true && global1.x)).x, arg_2.c.x)), _wgslsmith_clamp_u32(_wgslsmith_div_u32(~arg_2.b, _wgslsmith_mult_u32(arg_1, arg_1)), _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(arg_0, 4294967295u) | global3.yx), vec2<u32>(_wgslsmith_sub_u32(0u, global3.x), max(52098u, global3.x))), 0u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global4.c) * vec4<f32>(arg_2.c.x, 528f, global4.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.x) + arg_2.c.x))), ~select(vec4<i32>(-2147483647i, -2147483647i, u_input.b, 43713i), _wgslsmith_mult_vec4_i32(u_input.c, arg_2.d), !vec4<bool>(global1.x, arg_3, global1.x, arg_3)) & arg_2.d);
    let var_1 = firstLeadingBit(countOneBits(global4.b));
    let var_2 = (select(-vec4<i32>(9710i, 0i, global4.d.x, -48600i), u_input.c, !select(vec4<bool>(arg_3, global1.x, true, arg_3), vec4<bool>(global1.x, true, false, false), arg_3)) ^ vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.c.wzz, firstTrailingBit(vec3<i32>(var_0.d.x, arg_2.d.x, 2147483647i))), -32243i, u_input.b, -1i)) >> (min(~firstTrailingBit(~vec4<u32>(1u, var_0.b, var_1, global3.x)), vec4<u32>(1u, global3.x, 1456u, _wgslsmith_sub_u32(var_0.b, firstLeadingBit(4115u)))) % vec4<u32>(32u));
    global2 = _wgslsmith_f_op_f32(-arg_2.c.x);
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_0.a)) + arg_2.c.xw), reverseBits(global3.x), var_0.c, vec4<i32>(~(-2147483647i), countOneBits(var_0.d.x), ~_wgslsmith_mod_i32(countOneBits(arg_2.d.x), _wgslsmith_div_i32(var_0.d.x, 0i)), _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_mod_i32(var_0.d.x & 543i, -16144i), global4.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(~(~69770u), max(u_input.a, ~76866u), Struct_1(global4.a, ~abs(global4.b & u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(2147483647i, vec4<i32>(29036i, 53958i, global4.d.x, -2147483647i), Struct_1(global4.a, global3.x, global4.c, u_input.c)))), vec4<i32>(global4.d.x >> (_wgslsmith_div_u32(global3.x, 0u) % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(1991i, global4.d.x, 0i), -vec3<i32>(global4.d.x, global4.d.x, 52948i)), _wgslsmith_dot_vec4_i32(global4.d, global4.d), u_input.b)), func_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_div_vec2_f32(vec2<f32>(597f, 182f), global4.a), Struct_1(vec2<f32>(global4.a.x, global4.a.x), global3.x, vec4<f32>(global4.c.x, global4.c.x, -1000f, global4.a.x), u_input.c), Struct_1(vec2<f32>(2023f, global4.c.x), u_input.a, global4.c, vec4<i32>(23798i, u_input.b, global4.d.x, global4.d.x)), global1.x)).xyy, global0[_wgslsmith_index_u32(global3.x, 12u)], true))));
    var var_1 = ~(~(~min(_wgslsmith_mod_vec3_u32(vec3<u32>(67113u, 18155u, global3.x), vec3<u32>(var_0.b, u_input.d.x, 31988u)), ~vec3<u32>(24266u, 4294967295u, 1u))));
    global3 = vec3<u32>(~firstTrailingBit(_wgslsmith_div_u32(var_1.x, global4.b)) & 12113u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, var_0.b, ~var_1.x, global3.x), vec4<u32>(_wgslsmith_sub_u32(4294967295u, 4294967295u), _wgslsmith_add_u32(9460u, var_1.x ^ 0u), _wgslsmith_mod_u32(~global4.b, firstTrailingBit(var_0.b)), ~(~4294967295u))), ~(~(u_input.a | reverseBits(global3.x))));
    let var_2 = 51962u;
    let var_3 = select(select(global1.zzz, !vec3<bool>(true, false, !global1.x), global1.x), select(!vec3<bool>(true, all(vec3<bool>(global1.x, true, global1.x)), true), !(!select(global1.wwy, vec3<bool>(true, global1.x, false), global1.zwz)), !global1.zxx), select(vec3<bool>(true, global1.x, !global1.x && true), vec3<bool>(global1.x, !global1.x & all(vec3<bool>(global1.x, true, true)), global1.x), select(global1.xxy, !(!global1.xzy), select(select(global1.wzy, global1.wwx, global1.x), vec3<bool>(global1.x, global1.x, global1.x), false))));
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global4.c.zx, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1282f), _wgslsmith_f_op_vec4_f32(func_1(var_0.d.x, var_0.d, var_0)).x))), 43612u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.a.x, 391f, 1697f, 1086f) * vec4<f32>(var_0.c.x, var_0.c.x, global4.a.x, -223f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global4.c, global4.c)))), countOneBits(-vec4<i32>(~var_0.d.x, global4.d.x & u_input.c.x, firstLeadingBit(0i), ~global4.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(func_5(_wgslsmith_sub_u32(_wgslsmith_mod_u32(global4.b >> (var_0.b % 32u), u_input.a ^ 1u), _wgslsmith_clamp_u32(1u, ~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(2730u, 47287u, u_input.d.x, var_0.b), vec4<u32>(62768u, 4294967295u, 29072u, var_2)))), ~abs(~var_1.x), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.c.x, var_4.c.x), vec2<f32>(var_0.a.x, 211f)))), ~u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2629f, var_0.c.x, global4.c.x, 1509f)))), u_input.c), false).d.x, _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_2, global3.x), max(vec2<u32>(global3.x, var_0.b), global3.xz)), var_1.yz), ~vec2<u32>(30427u, _wgslsmith_clamp_u32(0u, 4294967295u, u_input.a))));
}

