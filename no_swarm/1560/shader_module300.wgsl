struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 4>;

var<private> global1: bool;

var<private> global2: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = Struct_2(_wgslsmith_mult_vec3_i32(select(vec3<i32>(min(-21476i, 0i), ~global2.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global2.a.x, 18774i, global2.a.x), arg_1.a)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, -1i, global2.a.x), vec3<i32>(-43924i, -8279i, 2147483647i) >> (vec3<u32>(0u, 0u, u_input.a) % vec3<u32>(32u))), vec3<bool>(true, true, true)), vec3<i32>(-countOneBits(u_input.b), 1i, i32(-1i) * -1i)), _wgslsmith_mod_vec2_i32(abs(global2.a.zx), arg_1.a.xw), vec2<i32>(10949i, _wgslsmith_mod_i32(46459i, _wgslsmith_div_i32(firstLeadingBit(global2.a.x), abs(-2147483647i)))));
    var var_1 = select(select(vec3<bool>(true, false, all(select(vec2<bool>(false, false), vec2<bool>(false, true), true))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, u_input.a >= u_input.a), all(vec2<bool>(true, true))), vec3<bool>(true, true, true)), !(!vec3<bool>(all(vec2<bool>(true, false)), true, true)), any(vec3<bool>(!all(vec4<bool>(true, true, false, false)), select(true, true, false), any(vec3<bool>(true, true, true)))));
    global0 = array<Struct_3, 4>();
    global2 = arg_1;
    global1 = !all(!(!select(vec3<bool>(true, var_1.x, false), vec3<bool>(false, false, true), var_1.x)));
    return !vec3<bool>(any(vec4<bool>(any(vec4<bool>(false, var_1.x, var_1.x, var_1.x)), false, select(var_1.x, var_1.x, var_1.x), any(vec3<bool>(var_1.x, true, var_1.x)))), all(var_1.xy), var_1.x);
}

fn func_2(arg_0: Struct_3, arg_1: vec2<u32>) -> i32 {
    let var_0 = Struct_3(-1000f, arg_0.b, arg_0.c, any(func_3(1f, arg_0.b)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, global2.a.x, -abs(1i), -37536i), global2.a));
    var var_1 = 0u;
    var var_2 = global0[_wgslsmith_index_u32(countOneBits(arg_1.x), 4u)];
    var var_3 = arg_0.c.a.x;
    global0 = array<Struct_3, 4>();
    return var_2.e;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: u32) -> Struct_2 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), -502f, _wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * arg_1.x) + -1124f)))), arg_1.x);
    global0 = array<Struct_3, 4>();
    global2 = Struct_1(global2.a);
    global2 = Struct_1(vec4<i32>(1i >> ((u_input.a >> (~arg_2 % 32u)) % 32u), reverseBits(-_wgslsmith_add_i32(-14093i, global2.a.x)), 0i, _wgslsmith_div_i32(~_wgslsmith_sub_i32(arg_0.b.x, 75130i), _wgslsmith_mult_i32(-1i, countOneBits(0i)))));
    global1 = !any(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false))) && false;
    return Struct_2(firstTrailingBit(vec3<i32>(2147483647i, _wgslsmith_mult_i32(1i, global2.a.x), global2.a.x)), reverseBits(countOneBits(~vec2<i32>(-7872i, 0i))), vec2<i32>(arg_0.c.x, ~(u_input.c << (~22571u % 32u))));
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> Struct_1 {
    var var_0 = func_4(Struct_2(vec3<i32>(-27243i, _wgslsmith_div_i32(44598i, global2.a.x), ~(-1i)) ^ vec3<i32>(global2.a.x, -global2.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 34186i), arg_0.a.xz)), vec2<i32>(min(func_2(Struct_3(-973f, Struct_1(global2.a), arg_0, false, u_input.b), vec2<u32>(4294967295u, u_input.a)), u_input.c), -1i), firstLeadingBit(abs(_wgslsmith_mod_vec2_i32(global2.a.wy, vec2<i32>(-58549i, -2147483647i))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1000f, 420f, -270f)) - vec4<f32>(1170f, -314f, -1000f, 1175f)), vec4<f32>(_wgslsmith_div_f32(191f, -402f), 1098f, -690f, _wgslsmith_f_op_f32(f32(-1f) * -781f)))))), ~u_input.a);
    var var_1 = Struct_2(max(vec3<i32>(select(reverseBits(arg_0.b.x), 17736i, true), func_4(func_4(Struct_2(vec3<i32>(2147483647i, -9481i, -25112i), vec2<i32>(-22706i, 78225i), global2.a.wz), vec4<f32>(1644f, -914f, 591f, -1014f), u_input.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-785f, 511f, -789f, 248f)), ~3641u).c.x, max(u_input.c, arg_0.a.x)), abs(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.c.x, global2.a.x, var_0.b.x), global2.a.xwx))), vec2<i32>(_wgslsmith_sub_i32(u_input.c ^ abs(36183i), firstTrailingBit(~arg_0.a.x)), -12164i), vec2<i32>(~func_4(arg_0, vec4<f32>(-502f, 1254f, -574f, -660f), ~u_input.a).b.x, u_input.c));
    var var_2 = arg_0;
    let var_3 = Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1730f))), _wgslsmith_f_op_f32(max(-185f, _wgslsmith_f_op_f32(-388f - -2671f)))))), Struct_1(vec4<i32>(~max(var_1.a.x, global2.a.x), firstTrailingBit(-19565i), _wgslsmith_add_i32(73483i, ~global2.a.x), abs(_wgslsmith_div_i32(21240i, arg_0.c.x)))), Struct_2(firstLeadingBit(firstTrailingBit(vec3<i32>(35060i, var_2.a.x, var_2.a.x)) ^ vec3<i32>(var_1.c.x, var_0.a.x, -2147483647i)), abs(select(~var_1.a.xz, -global2.a.ww, select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, arg_1)))), vec2<i32>(_wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.c, -2147483647i, global2.a.x), -54772i), var_0.b.x)), !select(_wgslsmith_f_op_f32(step(701f, -628f)) == -1094f, false, true), _wgslsmith_sub_i32(u_input.b, ~global2.a.x));
    global2 = var_3.b;
    return var_3.b;
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: vec4<bool>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-215f - 2299f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-449f, 106f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(583f * -572f))) + -274f);
    var var_1 = vec3<i32>(select(_wgslsmith_div_i32(0i, -31142i), arg_0, reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(u_input.a, 31778u, u_input.a))) < _wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.a, 988u, u_input.a), 69568u)), 5962i, _wgslsmith_div_i32(26i, arg_1.a.x));
    var_1 = _wgslsmith_mod_vec3_i32(global2.a.zyx, arg_1.a.www);
    return vec2<bool>(arg_2.x, 5172i == _wgslsmith_dot_vec4_i32(arg_1.a, ~min(arg_1.a, vec4<i32>(1i, 23108i, 0i, -1i))));
}

fn func_6(arg_0: u32, arg_1: f32, arg_2: vec2<bool>) -> vec4<i32> {
    var var_0 = func_4(Struct_2(func_1(func_4(Struct_2(vec3<i32>(global2.a.x, u_input.b, -2147483647i), vec2<i32>(-39322i, -1i), global2.a.yx), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_1, 269f)), max(arg_0, arg_0)), arg_2.x).a.xyx, select(countOneBits(vec2<i32>(u_input.b, u_input.b)), vec2<i32>(25059i, abs(2147483647i)), !arg_2), _wgslsmith_mod_vec2_i32(global2.a.zw, ~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, u_input.b), vec2<i32>(u_input.b, 2147483647i)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(max(-465f, 1000f)), arg_1) + _wgslsmith_f_op_vec4_f32(vec4<f32>(775f, -196f, 995f, arg_1) - _wgslsmith_div_vec4_f32(vec4<f32>(1304f, arg_1, arg_1, 471f), vec4<f32>(145f, 972f, -688f, arg_1)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-269f, -748f, arg_1, arg_1) * _wgslsmith_div_vec4_f32(vec4<f32>(-199f, arg_1, arg_1, arg_1), vec4<f32>(arg_1, arg_1, -337f, arg_1))))), true)), arg_0);
    var_0 = func_4(Struct_2(_wgslsmith_clamp_vec3_i32(~_wgslsmith_add_vec3_i32(var_0.a, vec3<i32>(global2.a.x, -90802i, global2.a.x)), vec3<i32>(~(-2147483647i), ~u_input.b, 1692i), global2.a.wwz), vec2<i32>(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(u_input.b, 6242i)), ~global2.a.wy), u_input.c), vec2<i32>(min(-2147483647i, 47140i >> (u_input.a % 32u)), global2.a.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(345f, 532f, -1016f, arg_1)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, -1000f, arg_1) * vec4<f32>(arg_1, -823f, 1575f, -1325f))))), _wgslsmith_mult_u32(4602u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(49726u, arg_0), vec2<u32>(30729u, 0u)) | _wgslsmith_dot_vec2_u32(min(vec2<u32>(36150u, 74919u), vec2<u32>(0u, 18702u)), min(vec2<u32>(u_input.a, arg_0), vec2<u32>(u_input.a, u_input.a)))));
    let var_1 = arg_2;
    let var_2 = _wgslsmith_clamp_i32(61791i, 0i, func_4(func_4(func_4(func_4(Struct_2(global2.a.zwz, global2.a.wx, global2.a.yz), vec4<f32>(254f, 542f, arg_1, arg_1), arg_0), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1158f, 837f, 884f, arg_1), vec4<f32>(arg_1, arg_1, arg_1, 1609f))), u_input.a), vec4<f32>(arg_1, -448f, _wgslsmith_f_op_f32(trunc(arg_1)), _wgslsmith_f_op_f32(step(arg_1, -102f))), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 5982u, 13377u), abs(vec4<u32>(arg_0, 27361u, u_input.a, u_input.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1302f, 1337f, 573f, arg_1) * vec4<f32>(arg_1, arg_1, 1352f, arg_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(960f, arg_1, 1000f, arg_1)), vec4<bool>(true, arg_2.x, arg_2.x, false)))), 16038u >> (~_wgslsmith_sub_u32(u_input.a, arg_0) % 32u)).b.x);
    let var_3 = Struct_3(-1000f, Struct_1(~firstTrailingBit(func_1(Struct_2(vec3<i32>(53389i, var_0.c.x, 2147483647i), vec2<i32>(-32678i, 7989i), vec2<i32>(var_2, u_input.c)), var_1.x).a)), Struct_2(vec3<i32>(global2.a.x, 10320i, ~abs(var_0.c.x)), -_wgslsmith_sub_vec2_i32(global2.a.wz, vec2<i32>(var_0.b.x, 63554i) & global2.a.ww), global2.a.xz ^ ~global2.a.yw), all(select(func_3(-1017f, Struct_1(global2.a)), select(select(vec3<bool>(true, arg_2.x, true), vec3<bool>(arg_2.x, arg_2.x, var_1.x), vec3<bool>(var_1.x, false, arg_2.x)), select(vec3<bool>(false, true, var_1.x), vec3<bool>(false, arg_2.x, false), arg_2.x), vec3<bool>(true, var_1.x, var_1.x)), true)), var_0.c.x);
    return max(var_3.b.a, max(select(vec4<i32>(var_3.e, -10026i, var_3.b.a.x, 19676i) << (countOneBits(vec4<u32>(4294967295u, arg_0, u_input.a, 4294967295u)) % vec4<u32>(32u)), var_3.b.a, !(arg_2.x & false)), var_3.b.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = true;
    global1 = !(!(false != all(vec3<bool>(false, true, false))));
    global2 = Struct_1(func_6(u_input.a, 747f, !func_5(_wgslsmith_dot_vec2_i32(global2.a.zz, global2.a.xz), func_1(Struct_2(global2.a.zwz, global2.a.xw, vec2<i32>(-2147483647i, 65178i)), true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false)))));
    global2 = Struct_1(_wgslsmith_sub_vec4_i32(-countOneBits(global2.a), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 1i, global2.a.x, 11745i) >> (vec4<u32>(45750u, u_input.a, 1u, u_input.a) % vec4<u32>(32u)), func_1(func_4(Struct_2(vec3<i32>(-27930i, u_input.c, -2147483647i), vec2<i32>(u_input.c, -1i), vec2<i32>(1301i, -23489i)), vec4<f32>(-201f, -1000f, -728f, -118f), 50639u), true).a)));
    global2 = Struct_1(func_6(11908u, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1500f))))), vec2<bool>(true, any(vec2<bool>(false, true)))));
    global0 = array<Struct_3, 4>();
    let var_0 = 23800u;
    var var_1 = func_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1023f, -1298f, true))), -958f, true)), func_1(func_4(Struct_2(global2.a.wwx, vec2<i32>(0i, u_input.b), ~vec2<i32>(u_input.c, -9916i)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, -1302f, -2124f, -1000f))))), u_input.a), true));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(661f)) - _wgslsmith_f_op_f32(floor(1000f))) + 1f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-659f, _wgslsmith_f_op_f32(round(-1269f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(576f * -168f))) * -1000f)));
}

