struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: i32,
    d: i32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_1 = Struct_1(1u, 0u, true, vec4<i32>(-24713i, 0i, 0i, 2147483647i), vec3<i32>(1i, -39819i, -20586i));

var<private> global2: vec2<u32> = vec2<u32>(24462u, 87521u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec2<i32>, arg_3: Struct_2) -> i32 {
    let var_0 = !(0i <= ~reverseBits(_wgslsmith_dot_vec3_i32(global1.e, global1.e)));
    var var_1 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -341f) - 1f), _wgslsmith_f_op_f32(sign(930f)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, _wgslsmith_f_op_f32(step(1000f, -1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x)))))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -537f)))))));
    var var_3 = Struct_1(arg_3.b, ~1u, false, reverseBits(vec4<i32>(firstLeadingBit(14239i), arg_3.d, -14704i, select(_wgslsmith_div_i32(arg_2.x, 2147483647i), 0i, !var_0))), abs(_wgslsmith_add_vec3_i32(global1.d.wxx, global1.d.xxz)));
    global1 = Struct_1(~countOneBits(46553u), ~(_wgslsmith_div_u32(~u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.b, global2.x), u_input.a.xz)) << (~_wgslsmith_dot_vec3_u32(vec3<u32>(global1.a, 1u, arg_3.b), vec3<u32>(arg_0.b, 14795u, 25673u)) % 32u)), !any(vec2<bool>(!arg_1.x, var_1.x <= -1475f)), countOneBits(var_3.d), -vec3<i32>(arg_3.d, var_3.e.x, -global1.d.x));
    return select(min(~_wgslsmith_clamp_i32(countOneBits(arg_0.d), 27701i, global1.e.x | 3245i), 58895i), ~(-max(-6554i, ~1i)), ~arg_3.c == -2147483647i);
}

fn func_4(arg_0: u32, arg_1: vec2<i32>) -> vec3<i32> {
    var var_0 = global1.b;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-601f, 1000f, global1.c))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1739f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(784f)))), _wgslsmith_f_op_f32(1f * -2259f))));
    var_0 = ~global2.x;
    var var_2 = select(select(select(!vec3<bool>(false, global1.c, true), !vec3<bool>(global1.c, false, global1.c), global1.c), !vec3<bool>(!global1.c, false, any(vec3<bool>(global1.c, true, false))), select(!vec3<bool>(false, global1.c, global1.c), !select(vec3<bool>(true, global1.c, global1.c), vec3<bool>(false, true, global1.c), global1.c), select(!vec3<bool>(global1.c, global1.c, global1.c), select(vec3<bool>(global1.c, false, false), vec3<bool>(global1.c, false, global1.c), vec3<bool>(true, false, true)), !vec3<bool>(true, global1.c, global1.c)))), select(!select(select(vec3<bool>(global1.c, true, global1.c), vec3<bool>(true, global1.c, global1.c), vec3<bool>(global1.c, global1.c, global1.c)), !vec3<bool>(global1.c, false, global1.c), select(vec3<bool>(true, false, global1.c), vec3<bool>(global1.c, false, global1.c), vec3<bool>(false, global1.c, global1.c))), !vec3<bool>(true, false, !global1.c), global1.c), true);
    let var_3 = Struct_2(!select(vec2<bool>(any(vec4<bool>(true, var_2.x, global1.c, global1.c)), all(vec4<bool>(global1.c, var_2.x, var_2.x, var_2.x))), vec2<bool>(!var_2.x, any(vec4<bool>(var_2.x, false, global1.c, true))), global1.c), ~(45603u | _wgslsmith_div_u32(global1.b, 31610u << (u_input.a.x % 32u))), 28520i, ~(-2147483647i), var_2.yx);
    return global1.e;
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_2 {
    global1 = Struct_1(u_input.a.x, global1.a, global1.c | false, vec4<i32>(_wgslsmith_sub_i32(global1.d.x, -46375i), 2147483647i, countOneBits(-2147483647i), -11914i), func_4(~(~min(1u, global2.x)), _wgslsmith_div_vec2_i32(vec2<i32>(func_3(Struct_2(vec2<bool>(true, global1.c), global1.a, -34511i, arg_1, vec2<bool>(true, true)), vec2<bool>(global1.c, false), vec2<i32>(global1.d.x, global1.d.x), Struct_2(vec2<bool>(global1.c, true), 1u, arg_1, 3299i, vec2<bool>(global1.c, true))), global1.d.x & 23371i), global1.d.xx)));
    global2 = u_input.a.xx;
    var var_0 = vec4<i32>(~1i, countOneBits(-2147483647i), 1i, firstLeadingBit(-global1.e.x));
    let var_1 = Struct_1(u_input.a.x | _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(global2.x, 0u), ~u_input.a.x, ~u_input.a.x), firstLeadingBit(abs(vec3<u32>(global1.a, 87037u, u_input.a.x)))), u_input.a.x, !global1.c, global1.d, -vec3<i32>(-_wgslsmith_div_i32(-21640i, -2147483647i), _wgslsmith_mod_i32(arg_1, -671i), -49582i));
    var var_2 = Struct_2(select(select(select(select(vec2<bool>(global1.c, global1.c), vec2<bool>(false, true), false), !vec2<bool>(false, global1.c), !var_1.c), !vec2<bool>(var_1.c, global1.c), !vec2<bool>(global1.c, var_1.c)), vec2<bool>(var_1.c, false), var_1.a <= global1.b), ~_wgslsmith_dot_vec2_u32(u_input.a.yz, u_input.a.zx >> (~u_input.a.zz % vec2<u32>(32u))), func_3(Struct_2(vec2<bool>(!var_1.c, global1.c), max(1034u, _wgslsmith_dot_vec3_u32(u_input.a, u_input.a)), _wgslsmith_mod_i32(var_1.d.x << (u_input.a.x % 32u), _wgslsmith_mult_i32(1i, -2147483647i)), (arg_1 ^ var_1.d.x) << (_wgslsmith_mult_u32(4294967295u, var_1.a) % 32u), vec2<bool>(true, true)), !select(vec2<bool>(false, true), select(vec2<bool>(var_1.c, global1.c), vec2<bool>(true, false), false), any(vec3<bool>(false, false, true))), ~_wgslsmith_mult_vec2_i32(var_1.e.yy, global1.d.zz), Struct_2(vec2<bool>(true, select(false, var_1.c, global1.c)), var_1.a, 6020i, 31149i | -global1.e.x, vec2<bool>(!var_1.c, global1.c))), (arg_1 >> ((0u >> (0u % 32u)) % 32u)) & -(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -26357i, 2147483647i, -54759i), global1.d) >> (1u % 32u)), vec2<bool>(~max(26826u, 4294967295u) >= global2.x, false));
    return Struct_2(!select(vec2<bool>(true, true), vec2<bool>(global1.c, var_2.e.x), any(vec2<bool>(true, var_1.c))), ~reverseBits(38306u), 0i, var_1.d.x, var_2.a);
}

fn func_1(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: u32, arg_3: i32) -> u32 {
    let var_0 = Struct_2(select(vec2<bool>(any(!vec4<bool>(global1.c, true, true, true)), global1.c), vec2<bool>((arg_1.x || arg_0.a.x) && false, global1.c), !(!(!vec2<bool>(true, arg_0.a.x)))), global2.x, global1.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global1.d.x, firstLeadingBit(arg_3)), select(global1.e.yz >> (u_input.a.yy % vec2<u32>(32u)), vec2<i32>(arg_0.d, 0i), !arg_1.x) ^ firstTrailingBit(vec2<i32>(global1.e.x, arg_3))), arg_0.a);
    let var_1 = vec3<f32>(-639f, -506f, _wgslsmith_f_op_f32(-1152f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-627f)), _wgslsmith_f_op_f32(-848f + -1784f))));
    let var_2 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * var_1.x)), _wgslsmith_mod_i32(_wgslsmith_div_i32(-1i, countOneBits(-2147483647i)), -1i));
    global2 = _wgslsmith_div_vec2_u32(firstLeadingBit(u_input.a.xy), reverseBits(_wgslsmith_clamp_vec2_u32(u_input.a.yx, ~(~vec2<u32>(global2.x, 5227u)), u_input.a.zx)));
    var var_3 = 1u;
    return global2.x;
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> vec3<f32> {
    let var_0 = ~(~(~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(37592u, 11543u, 4294967295u, 0u), vec4<u32>(global1.b, u_input.a.x, global1.a, arg_2.b)), vec4<u32>(global2.x, arg_3.b, 1u, 16511u) >> (vec4<u32>(arg_1.b, u_input.a.x, arg_2.b, arg_2.b) % vec4<u32>(32u)))));
    let var_1 = 2147483647i;
    global2 = vec2<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(76374u, global1.a, ~arg_1.a) ^ _wgslsmith_mult_vec3_u32(select(vec3<u32>(arg_2.b, 40287u, arg_2.b), u_input.a, vec3<bool>(false, false, arg_1.c)), ~u_input.a), select(_wgslsmith_add_vec3_u32(vec3<u32>(4411u, var_0, arg_2.b), ~u_input.a), vec3<u32>(_wgslsmith_mult_u32(68042u, arg_2.b), 81947u, _wgslsmith_dot_vec3_u32(u_input.a, u_input.a)), select(select(vec3<bool>(arg_2.e.x, arg_2.a.x, global1.c), vec3<bool>(true, true, arg_2.e.x), true), select(vec3<bool>(false, global1.c, true), vec3<bool>(arg_1.c, false, true), arg_3.c), !vec3<bool>(global1.c, arg_2.a.x, false)))));
    global0 = true;
    let var_2 = false;
    return vec3<f32>(1f, 764f, -1000f);
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = vec4<u32>(func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -191f), arg_0.x)), _wgslsmith_div_i32(global1.e.x, func_3(func_2(arg_0.x, 0i), select(vec2<bool>(true, global1.c), vec2<bool>(false, global1.c), global1.c), select(vec2<i32>(global1.d.x, -12736i), vec2<i32>(-5736i, 1i), true), func_2(-1276f, 15561i)))).b, arg_1.a >> ((max(_wgslsmith_sub_u32(arg_1.b, 0u), ~0u) << (countOneBits(93565u ^ u_input.a.x) % 32u)) % 32u), 1u, ~(~62828u));
    var var_1 = func_2(_wgslsmith_f_op_f32(-arg_0.x), 0i);
    let var_2 = vec2<bool>(arg_0.x > 246f, !var_1.e.x);
    var var_3 = 41955i;
    global1 = arg_1;
    return Struct_1(~(~1u), 1u, arg_1.c, vec4<i32>(var_1.c, select(var_1.d, 23514i, var_1.a.x) ^ arg_1.d.x, _wgslsmith_sub_i32(global1.e.x, abs(1i)), ~var_1.d), ~_wgslsmith_sub_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(global1.e.x, global1.e.x, var_1.d), vec3<i32>(arg_1.e.x, global1.d.x, arg_1.e.x)), global1.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(192f, -1696f, 172f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1033f, 1106f)))), _wgslsmith_f_op_vec3_f32(func_5(-vec2<i32>(global1.d.x, 43508i), Struct_1(countOneBits(global1.a), u_input.a.x, false, _wgslsmith_div_vec4_i32(global1.d, vec4<i32>(global1.e.x, 0i, global1.e.x, 55441i)), vec3<i32>(global1.d.x, global1.d.x, global1.e.x)), Struct_2(!vec2<bool>(global1.c, false), countOneBits(4294967295u), global1.d.x, global1.d.x, vec2<bool>(true, global1.c)), Struct_1(func_1(Struct_2(vec2<bool>(global1.c, global1.c), global2.x, global1.d.x, global1.d.x, vec2<bool>(false, true)), vec3<bool>(false, true, global1.c), 1u, global1.d.x), 4294967295u, global1.c, _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 0i, global1.e.x, 10813i), vec4<i32>(global1.e.x, global1.d.x, 61054i, global1.d.x)), abs(global1.e)))), all(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(global1.c, false), vec2<bool>(true, true)), !vec2<bool>(global1.c, true))))), Struct_1(14268u, func_1(func_2(_wgslsmith_div_f32(-630f, 625f), ~71387i), select(select(vec3<bool>(false, global1.c, false), vec3<bool>(true, global1.c, true), vec3<bool>(global1.c, false, true)), select(vec3<bool>(global1.c, global1.c, false), vec3<bool>(true, global1.c, global1.c), vec3<bool>(global1.c, true, true)), vec3<bool>(true, true, true)), func_2(-1660f, 35251i).b, countOneBits(global1.e.x & 0i)), false, -vec4<i32>(~global1.e.x, -global1.d.x, global1.e.x, reverseBits(-42299i)), ~global1.d.zxw));
    global2 = vec2<u32>(_wgslsmith_add_u32(4294967295u, min(21640u, firstTrailingBit(_wgslsmith_mod_u32(var_0.b, global2.x)))), 98073u);
    var var_1 = abs(global1.a);
    global0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~(~abs(4294967295u)), _wgslsmith_mod_u32(_wgslsmith_div_u32(16398u, var_0.a), 0u) | _wgslsmith_mod_u32(1u, 7204u), ~42424u), u_input.a.xy >> (_wgslsmith_clamp_vec2_u32(u_input.a.yz, ~u_input.a.yy & ~vec2<u32>(global2.x, var_0.a), u_input.a.xz) % vec2<u32>(32u)), -(~var_0.d.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-501f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(177f + -1000f))), var_0.d.x);
}

