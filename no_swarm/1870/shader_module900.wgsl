struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<bool>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: Struct_2,
    e: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: f32,
    d: vec4<i32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 20678i;

var<private> global1: array<bool, 10>;

var<private> global2: vec2<bool>;

var<private> global3: Struct_4 = Struct_4(Struct_3(20964u, 172f, vec3<u32>(1u, 29977u, 1u), Struct_2(vec4<u32>(66194u, 0u, 1u, 1u), vec4<u32>(0u, 1u, 2879u, 60362u), Struct_1(6882i, false, vec3<bool>(false, false, true), vec4<f32>(511f, -1586f, 1380f, -1187f)), -1000f), vec2<u32>(3392u, 0u)), Struct_1(0i, false, vec3<bool>(false, false, false), vec4<f32>(1135f, -1000f, 661f, 456f)), -367f, vec4<i32>(-10967i, 69836i, 0i, 14506i), vec2<bool>(false, false));

var<private> global4: vec2<f32> = vec2<f32>(476f, -1221f);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: bool, arg_3: Struct_3) -> i32 {
    global0 = _wgslsmith_dot_vec2_i32(max(vec2<i32>(global3.a.d.c.a, ~arg_3.d.c.a), min(~vec2<i32>(54109i, global3.d.x), ~vec2<i32>(arg_3.d.c.a, -1i)) | ~(-vec2<i32>(1i, 1i))), reverseBits(vec2<i32>(_wgslsmith_add_i32(_wgslsmith_clamp_i32(-2913i, 20526i, u_input.b), countOneBits(-11923i)), ~u_input.b)));
    var var_0 = arg_3.d;
    return -min(~var_0.c.a >> (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 31357u), _wgslsmith_sub_vec2_u32(arg_3.d.b.xx, global3.a.d.a.yz)) % 32u), ~arg_3.d.c.a);
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_4(Struct_3(global3.a.c.x, global4.x, arg_0.zyx, Struct_2(vec4<u32>(u_input.c.x, ~4294967295u, arg_0.x, 4294967295u), ~firstTrailingBit(global3.a.d.a), Struct_1(-1i, select(global3.a.d.c.b, false, false), !global3.a.d.c.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c, 1000f, global3.b.d.x, 713f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(472f * -103f))), select(u_input.c, arg_0.wz, global3.a.d.c.c.xx)), global3.a.d.c, -835f, -vec4<i32>(-38436i & u_input.b, u_input.b ^ global3.b.a, func_3(1u, global3.b.d.x, false, Struct_3(global3.a.a, 493f, arg_0.yyz, global3.a.d, arg_0.xx)), global3.b.a) & abs(global3.d), vec2<bool>(true, global3.e.x));
    global4 = _wgslsmith_f_op_vec2_f32(sign(var_0.b.d.yy));
    var var_1 = select(select(!(!select(vec2<bool>(var_0.e.x, var_0.e.x), global3.e, vec2<bool>(global3.a.d.c.b, global1[_wgslsmith_index_u32(global3.a.a, 10u)]))), var_0.b.c.xz, !(!select(global3.a.d.c.c.xy, vec2<bool>(global2.x, true), vec2<bool>(true, false)))), var_0.e, select(var_0.e, var_0.a.d.c.c.yx, true));
    let var_2 = var_0.d;
    return Struct_1(_wgslsmith_sub_i32(global3.d.x, func_3(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(10516u, 1u, 10136u), min(var_0.a.e.x, 0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global4.x, 1598f))), global3.b.b, Struct_3(u_input.a, _wgslsmith_div_f32(global4.x, var_0.c), vec3<u32>(16991u, var_0.a.c.x, 0u) ^ global3.a.d.b.yyz, var_0.a.d, select(vec2<u32>(12881u, var_0.a.d.b.x), vec2<u32>(u_input.a, arg_0.x), var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-131f * _wgslsmith_f_op_f32(-var_0.c))) >= 1656f, vec3<bool>(!(!var_0.a.d.c.c.x), any(!vec3<bool>(true, var_0.e.x, global1[_wgslsmith_index_u32(u_input.c.x, 10u)])), global1[_wgslsmith_index_u32(arg_0.x, 10u)]), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global4.x, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-global3.a.b)), global4.x, 586f))));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: vec2<bool>) -> Struct_2 {
    global2 = !(!(!(!vec2<bool>(global2.x, true))));
    global0 = 4428i;
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(arg_0.a.d.c.d + vec4<f32>(463f, 560f, 382f, 273f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, -428f, global4.x, global3.b.d.x) * vec4<f32>(3095f, 352f, global4.x, global3.a.d.d))) + vec4<f32>(global4.x, _wgslsmith_f_op_f32(-612f - -1593f), global4.x, _wgslsmith_f_op_f32(exp2(global4.x))))), true));
    let var_1 = arg_0.a.d;
    var var_2 = vec4<i32>(global3.b.a, firstTrailingBit(min(-1i >> (reverseBits(0u) % 32u), u_input.b)), -7135i, select(-(_wgslsmith_clamp_i32(38694i, -81719i, u_input.b) ^ u_input.b), -u_input.b, global3.a.d.c.c.x));
    return Struct_2(firstLeadingBit(~arg_0.a.d.b), reverseBits(arg_0.a.d.b), var_1.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-533f - -313f) - _wgslsmith_f_op_f32(global4.x + var_0.x)))))));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: vec4<f32>) -> Struct_3 {
    global4 = arg_0;
    var var_0 = Struct_4(Struct_3(_wgslsmith_div_u32(~(~77433u), u_input.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1203f), global3.a.b), global3.a.c, arg_1.d, u_input.c), Struct_1(-(global3.d.x ^ _wgslsmith_mult_i32(global3.a.d.c.a, 11194i)), any(func_4(Struct_4(Struct_3(global3.a.e.x, arg_0.x, global3.a.d.a.yyw, Struct_2(vec4<u32>(4294967295u, 1u, arg_1.e.x, u_input.c.x), vec4<u32>(4294967295u, 0u, 1u, u_input.a), Struct_1(-26053i, false, global3.b.c, vec4<f32>(-1036f, -1218f, 1000f, arg_0.x)), arg_0.x), global3.a.e), Struct_1(2147483647i, true, vec3<bool>(false, global2.x, true), vec4<f32>(global3.c, -1526f, 1261f, arg_1.d.d)), arg_2.x, global3.d, global3.b.c.yz), ~vec3<u32>(26246u, 100584u, arg_1.d.b.x), vec2<bool>(global2.x, false)).c.c.yx), vec3<bool>(true, any(select(vec4<bool>(true, arg_1.d.c.b, global3.e.x, arg_1.d.c.b), vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(14574u, 10u)]), arg_1.d.c.b)), global3.d.x == -arg_1.d.c.a), _wgslsmith_f_op_vec4_f32(select(arg_1.d.c.d, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(765f, -1812f, -1696f, arg_1.b) * arg_1.d.c.d))), select(select(vec4<bool>(false, arg_1.d.c.c.x, true, arg_1.d.c.b), vec4<bool>(true, global3.b.c.x, global2.x, false), false), !vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 10u)], true, global1[_wgslsmith_index_u32(u_input.a, 10u)], arg_1.d.c.c.x), arg_1.d.c.c.x || global1[_wgslsmith_index_u32(arg_1.d.b.x, 10u)])))), arg_0.x, select(max(vec4<i32>(-1i) * -global3.d, _wgslsmith_mod_vec4_i32(~vec4<i32>(33650i, -2147483647i, -10619i, 3789i), reverseBits(global3.d))), vec4<i32>(_wgslsmith_mod_i32(global3.d.x, 57783i) >> (1u % 32u), _wgslsmith_sub_i32(1i, -global3.a.d.c.a), ~(~(-22621i)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(global3.d.zxx, global3.d.wyw), ~u_input.b, abs(2469i))), !(!global3.e.x)), global3.b.c.xx);
    var var_1 = _wgslsmith_mult_vec2_i32(~vec2<i32>(~abs(2147483647i), max(u_input.b, -var_0.b.a)), global3.d.zx << (vec2<u32>(4294967295u, _wgslsmith_clamp_u32(func_4(Struct_4(var_0.a, var_0.a.d.c, var_0.a.b, vec4<i32>(29265i, u_input.b, global3.a.d.c.a, global3.a.d.c.a), vec2<bool>(global2.x, true)), arg_1.c, global3.a.d.c.c.zx).a.x, 39737u, _wgslsmith_sub_u32(u_input.a, 1u))) % vec2<u32>(32u)));
    global4 = var_0.a.d.c.d.zz;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1000f, 934f)), _wgslsmith_f_op_f32(1000f + global4.x))))), _wgslsmith_f_op_f32(abs(-111f)));
    return arg_1;
}

fn func_1() -> f32 {
    let var_0 = func_5(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.b.d.zx) - global3.a.d.c.d.zz))), Struct_3(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(global3.a.d.a.x, 9219u, 76367u)), vec3<u32>(4294967295u << (u_input.c.x % 32u), _wgslsmith_mod_u32(global3.a.d.b.x, 49266u), global3.a.c.x)), _wgslsmith_f_op_f32(-888f + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global4.x, -821f)))), global3.a.d.a.xyz, func_4(Struct_4(global3.a, func_2(vec4<u32>(52143u, 1u, 12510u, u_input.c.x)), _wgslsmith_f_op_f32(trunc(-2133f)), -vec4<i32>(0i, 9239i, -53748i, 0i), select(vec2<bool>(global2.x, true), global3.e, vec2<bool>(false, global3.b.b))), global3.a.d.a.wxw, vec2<bool>(!global3.e.x, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 2668u), 10u)])), reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.c.x), vec2<u32>(u_input.a, 4294967295u)))), _wgslsmith_f_op_vec4_f32(global3.b.d + global3.a.d.c.d));
    var var_1 = _wgslsmith_clamp_vec2_u32(select(_wgslsmith_div_vec2_u32(global3.a.c.zz, ~global3.a.d.a.yx), ~func_5(vec2<f32>(-735f, 610f), global3.a, vec4<f32>(var_0.b, 1657f, 511f, global3.a.b)).c.yz, true), vec2<u32>(select(countOneBits(var_0.a), _wgslsmith_div_u32(2210u, 1u), global2.x), _wgslsmith_sub_u32(u_input.a, var_0.c.x)), ~(~firstTrailingBit(vec2<u32>(4294967295u, global3.a.c.x)))) & (vec2<u32>(~func_5(global3.b.d.yy, Struct_3(global3.a.d.b.x, 1043f, vec3<u32>(1u, global3.a.a, 7232u), Struct_2(var_0.d.b, vec4<u32>(global3.a.a, var_0.c.x, var_0.c.x, global3.a.d.b.x), Struct_1(u_input.b, global3.e.x, vec3<bool>(true, true, false), vec4<f32>(828f, -1487f, global3.a.d.d, var_0.b)), global4.x), vec2<u32>(32110u, global3.a.a)), vec4<f32>(1660f, 305f, global4.x, global4.x)).e.x, ~53439u) >> (firstTrailingBit(vec2<u32>(~global3.a.d.b.x, 83297u)) % vec2<u32>(32u)));
    global1 = array<bool, 10>();
    return 391f;
}

fn func_6(arg_0: f32) -> Struct_4 {
    var var_0 = Struct_2(global3.a.d.a, ~global3.a.d.b, func_5(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global3.b.d.xz * vec2<f32>(1419f, global4.x)), global3.a.d.c.d.ww, global3.a.d.c.c.yx)))), func_5(vec2<f32>(-1294f, -866f), Struct_3(20751u, _wgslsmith_f_op_f32(116f + global4.x), global3.a.c, func_4(Struct_4(Struct_3(u_input.c.x, global3.b.d.x, global3.a.c, global3.a.d, global3.a.c.xz), global3.b, global4.x, global3.d, vec2<bool>(false, false)), vec3<u32>(u_input.a, 1u, 24927u), vec2<bool>(false, false)), ~vec2<u32>(u_input.a, 4294967295u)), global3.b.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, -1000f, 1084f, -1691f) + vec4<f32>(703f, -830f, -422f, global3.a.b)) * vec4<f32>(-215f, 139f, -435f, global4.x)))).d.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global4.x, 187f))) + global4.x)));
    let var_1 = _wgslsmith_add_i32(select(abs(22137i), _wgslsmith_add_i32(-67904i, -27904i) >> ((global3.a.e.x & u_input.a) % 32u), global2.x) & abs(var_0.c.a), u_input.b);
    global2 = !func_5(vec2<f32>(_wgslsmith_div_f32(global3.b.d.x, var_0.d), _wgslsmith_f_op_f32(sign(-1144f))), global3.a, var_0.c.d).d.c.c.yx;
    global0 = i32(-1i) * -(i32(-1i) * -2147483647i);
    let var_2 = global3.a.d.c;
    return Struct_4(func_5(_wgslsmith_f_op_vec2_f32(exp2(global3.a.d.c.d.wy)), func_5(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1715f, var_0.c.d.x)))), func_5(vec2<f32>(207f, global4.x), Struct_3(u_input.c.x, 495f, vec3<u32>(4294967295u, 1u, global3.a.e.x), global3.a.d, u_input.c), _wgslsmith_f_op_vec4_f32(global3.a.d.c.d - vec4<f32>(var_0.c.d.x, global3.c, -614f, 631f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.c, global3.b.d.x, global3.c, 954f) * var_0.c.d)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-486f, _wgslsmith_f_op_f32(-1061f * arg_0), _wgslsmith_f_op_f32(-global3.c), global3.b.d.x))), var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1()))) - -1701f)), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, _wgslsmith_add_i32(-2147483647i, -u_input.b), ~var_0.c.a, var_2.a), abs(global3.d)), !vec2<bool>(!func_2(vec4<u32>(u_input.c.x, 171u, u_input.a, 59926u)).b, var_0.c.c.x && func_4(Struct_4(global3.a, Struct_1(global3.d.x, false, vec3<bool>(true, true, global3.e.x), var_0.c.d), arg_0, vec4<i32>(41507i, u_input.b, var_0.c.a, -2147483647i), vec2<bool>(global3.e.x, false)), global3.a.d.b.xwy, vec2<bool>(global1[_wgslsmith_index_u32(21904u, 10u)], global2.x)).c.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(global3.d.x, -45418i, abs(14491i)), max(countOneBits(vec3<i32>(u_input.b, -34461i, global3.b.a)), vec3<i32>(global3.b.a, 0i, global3.a.d.c.a))) ^ _wgslsmith_div_vec3_i32(select(vec3<i32>(global3.b.a, global3.b.a, 0i), global3.d.zzy, select(global3.b.c, global3.b.c, global3.a.d.c.c)), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, global3.b.a, 1i), -global3.d.zyz)), firstTrailingBit(global3.d.yyx ^ _wgslsmith_sub_vec3_i32(-global3.d.yzw, global3.d.zyx)), ~(~(~global3.d.zxx)));
    global3 = func_6(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-global4.x)))))));
    let var_1 = global3.b.c.x;
    var var_2 = func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(137f + _wgslsmith_f_op_f32(global4.x + _wgslsmith_f_op_f32(1013f - 1821f))))).a.e.x;
    let var_3 = func_5(vec2<f32>(1000f, _wgslsmith_f_op_f32(-global4.x)), func_6(global3.a.d.d).a, _wgslsmith_f_op_vec4_f32(-global3.b.d));
    global3 = func_6(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.b + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(global3.b.d.x - -1286f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global4.x)) * -583f))));
    global2 = global3.a.d.c.c.yx;
    var var_4 = global3.a.d.c.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-var_3.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)), -459f), vec4<u32>(~max(var_3.e.x, global3.a.e.x), var_3.d.b.x, ~func_5(global3.b.d.zw, Struct_3(4294967295u, 1201f, var_3.c, global3.a.d, vec2<u32>(31259u, u_input.a)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(844f, 1796f, 1000f, var_3.d.c.d.x), var_3.d.c.d))).c.x, global3.a.a), -1534f, var_3.e);
}

