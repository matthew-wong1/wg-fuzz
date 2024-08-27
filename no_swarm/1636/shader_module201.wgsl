struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(-1142f));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x));
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.a.x)));
    var var_1 = Struct_2(arg_0.a.x, vec2<u32>(select(55181u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 25021u, arg_1, 2924u), vec4<u32>(0u, arg_1, u_input.a.x, arg_1), u_input.a), vec4<u32>(u_input.c.x, 42084u, arg_1, u_input.c.x)), all(vec3<bool>(true, false, true))), ~_wgslsmith_mod_u32(min(63745u, 4294967295u), _wgslsmith_sub_u32(u_input.a.x, u_input.c.x))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(arg_0.a.x + -1000f), -403f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.a.x))))), ~20946u | _wgslsmith_dot_vec3_u32(countOneBits(u_input.a.wwy & u_input.c), select(vec3<u32>(arg_1, arg_1, u_input.c.x) & vec3<u32>(29700u, u_input.a.x, 1u), _wgslsmith_sub_vec3_u32(u_input.c, u_input.a.xxy), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false)))));
    let var_2 = _wgslsmith_div_f32(arg_0.a.x, var_1.c.a.x);
    return ~var_1.d;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_2(550f, vec2<u32>(1u, 4382u) ^ ~vec2<u32>(9844u, ~u_input.c.x), arg_1, u_input.c.x);
    let var_1 = Struct_2(var_0.a, u_input.a.ww, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0, 1380f, 106f), _wgslsmith_f_op_vec3_f32(-var_0.c.a))))), _wgslsmith_sub_u32(4294967295u, select(~func_3(arg_1, 4830u), _wgslsmith_mod_u32(var_0.b.x, _wgslsmith_dot_vec2_u32(u_input.c.zy, var_0.b)), arg_2.x)));
    var var_2 = abs(countOneBits(49907u));
    var_0 = var_1;
    var_2 = var_1.b.x;
    return Struct_1(var_1.c.a);
}

fn func_4(arg_0: vec4<u32>, arg_1: i32, arg_2: vec4<f32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = func_2(arg_2.x, Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(134f, -665f, arg_2.x))), func_2(arg_2.x, func_2(arg_2.x, arg_3.c, vec3<bool>(true, false, false), vec4<i32>(2147483647i, arg_1, u_input.e, 4329i)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), vec4<i32>(18752i, 0i, 2147483647i, -2147483647i)).a, vec3<bool>(true, true, true)))), select(vec3<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true)), !any(vec4<bool>(true, true, false, false)), true), vec3<bool>(true, true, true), true), max(vec4<i32>(~arg_1, arg_1, 2147483647i, -56016i) >> ((arg_0 & u_input.a) % vec4<u32>(32u)), select(min(vec4<i32>(u_input.e, -2147483647i, arg_1, u_input.d.x) ^ vec4<i32>(arg_1, -39643i, arg_1, 0i), -vec4<i32>(-9455i, 2147483647i, arg_1, 2147483647i)), vec4<i32>(0i, u_input.d.x & arg_1, -1i, arg_1), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)))));
    var var_1 = ~vec3<u32>(abs(57748u), arg_0.x, firstLeadingBit(~_wgslsmith_mult_u32(0u, u_input.a.x)));
    let var_2 = arg_1;
    var var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(692f)) - _wgslsmith_f_op_f32(f32(-1f) * -994f)), arg_2.x));
    var var_4 = true;
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(957f, var_3.a.x, var_3.a.x))) * arg_3.c.a)));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: u32, arg_3: u32) -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(-1i) * -(vec4<i32>(arg_0.x, u_input.e, 3763i, 14604i) << (u_input.a % vec4<u32>(32u)))), vec4<i32>(u_input.b, countOneBits(arg_0.x), ~(-27681i >> (_wgslsmith_sub_u32(u_input.a.x, 0u) % 32u)), -37240i));
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(arg_1.a.x)), 294f, any(vec2<bool>(false, true)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-func_4(u_input.a, arg_0.x, vec4<f32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, 106f), Struct_2(-1241f, vec2<u32>(arg_3, u_input.c.x), arg_1, arg_3)).a.x), _wgslsmith_f_op_f32(f32(-1f) * -883f), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -847f)))), -1000f), vec4<f32>(_wgslsmith_f_op_f32(min(arg_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -541f))), -553f, _wgslsmith_f_op_f32(arg_1.a.x + func_4(min(u_input.a, vec4<u32>(1u, 4294967295u, u_input.a.x, arg_2)), 2147483647i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(963f, arg_1.a.x, -424f, 1187f)), Struct_2(arg_1.a.x, u_input.a.yw, arg_1, arg_2)).a.x), -1306f));
    var var_2 = -(~(var_0.ywy ^ abs(-vec3<i32>(var_0.x, -37424i, -1i))));
    var var_3 = _wgslsmith_sub_i32(u_input.b, 18006i);
    var var_4 = _wgslsmith_div_f32(-588f, 2805f);
    return arg_1;
}

fn func_1() -> bool {
    var var_0 = Struct_2(-999f, select(min(u_input.c.yz, abs(abs(vec2<u32>(41539u, u_input.c.x)))), u_input.a.zy, select(vec2<bool>(false, all(vec2<bool>(true, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), true), false)), func_5(-u_input.d << (select(vec2<u32>(u_input.a.x, 6401u), u_input.c.zx << (vec2<u32>(u_input.a.x, 97027u) % vec2<u32>(32u)), true) % vec2<u32>(32u)), func_4(~u_input.a, u_input.d.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(627f, -1031f, 122f, 182f)) + vec4<f32>(310f, -593f, 694f, -580f)), Struct_2(_wgslsmith_f_op_f32(round(-2050f)), vec2<u32>(u_input.a.x, 31931u), func_2(231f, Struct_1(vec3<f32>(1000f, 1264f, -1000f)), vec3<bool>(true, false, true), vec4<i32>(-14830i, 6166i, u_input.d.x, u_input.e)), ~u_input.c.x)), func_3(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(525f, -275f, -385f))), ~u_input.a.x), ~firstTrailingBit(u_input.c.x << (4294967295u % 32u))), u_input.a.x);
    var var_1 = -378f;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(step(func_2(_wgslsmith_div_f32(func_4(u_input.a, 12099i, vec4<f32>(2427f, -397f, -520f, var_0.a), Struct_2(499f, var_0.b, var_0.c, 0u)).a.x, _wgslsmith_f_op_f32(-var_0.c.a.x)), Struct_1(vec3<f32>(714f, var_0.a, 1000f)), vec3<bool>(true, var_0.b.x < 1u, all(vec2<bool>(false, true))), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, u_input.b, 2147483647i, 83971i), vec4<i32>(u_input.d.x, u_input.b, u_input.e, -1i) >> (u_input.a % vec4<u32>(32u)), vec4<i32>(-2147483647i, u_input.e, 37092i, u_input.b))).a.x, _wgslsmith_f_op_f32(-648f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.a - -1246f), _wgslsmith_f_op_f32(trunc(var_0.a))))))), abs(~(~(var_0.b | var_0.b))), func_5(~vec2<i32>(-20422i, -2147483647i), var_0.c, _wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, var_0.b.x, 4294967295u), vec3<u32>(u_input.c.x, u_input.c.x, 13594u)), 4294967295u ^ u_input.a.x), 0u & ~func_3(Struct_1(vec3<f32>(var_0.c.a.x, 1327f, 250f)), 0u)), 11346u);
    var_2 = Struct_2(_wgslsmith_div_f32(func_5(firstLeadingBit(u_input.d), func_4(min(vec4<u32>(var_2.d, 49397u, var_0.d, 10590u), vec4<u32>(53059u, 4294967295u, var_0.b.x, u_input.c.x)), -2147483647i, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.c.a.x, var_0.a, var_0.a, -1000f))), Struct_2(-1235f, var_2.b, var_0.c, 4294967295u)), ~var_2.d, select(27910u, 0u, select(true, false, true))).a.x, 1000f), firstTrailingBit(firstTrailingBit(~_wgslsmith_mod_vec2_u32(var_2.b, vec2<u32>(4294967295u, 52697u)))), Struct_1(vec3<f32>(var_0.c.a.x, -1881f, func_2(_wgslsmith_f_op_f32(-var_0.c.a.x), var_0.c, vec3<bool>(true, true, false), select(vec4<i32>(-66589i, u_input.e, u_input.b, u_input.d.x), vec4<i32>(-10409i, 0i, 1i, 2147483647i), vec4<bool>(true, false, false, true))).a.x)), u_input.a.x);
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(var_2.c.a * _wgslsmith_f_op_vec3_f32(-var_0.c.a)))))));
    return all(!vec4<bool>(!all(vec2<bool>(true, true)), false, true, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec3<bool>(!all(vec2<bool>(true, false)), !func_1(), (u_input.a.x >> (u_input.c.x % 32u)) < 20770u), vec3<bool>(true, true, false), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(false, true, false)), all(vec3<bool>(false, true, false)), true)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-299f, 318f, 1142f) * vec3<f32>(1191f, 1054f, 1212f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(575f, 159f, 513f)))))));
    var_1 = func_4(u_input.a, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-1i) * -vec4<i32>(1i, -1i, u_input.d.x, 69084i)), min(select(~vec4<i32>(1i, -1i, 1i, u_input.b), vec4<i32>(-3971i, 2147483647i, -2147483647i, -1i), !vec4<bool>(true, true, true, var_0.x)), _wgslsmith_div_vec4_i32(vec4<i32>(1i, 1i, u_input.d.x, u_input.d.x) | vec4<i32>(-2147483647i, u_input.d.x, 2147483647i, u_input.b), vec4<i32>(-2147483647i, -2147483647i, u_input.b, 1i) ^ vec4<i32>(u_input.b, u_input.e, u_input.e, u_input.b)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -401f)), _wgslsmith_f_op_f32(340f * var_1.a.x), _wgslsmith_f_op_f32(294f - -1000f)))), Struct_2(-1300f, ~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.a.x, 1u)) << (u_input.a.zz % vec2<u32>(32u)), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -324f, -1035f)), var_1.a, true))), max(u_input.c.x, ~u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_1.a.xz), -430f);
}

