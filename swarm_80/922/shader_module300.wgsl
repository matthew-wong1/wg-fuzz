struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: i32,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: vec4<bool>,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: u32, arg_3: vec4<i32>) -> i32 {
    global0 = Struct_1(arg_3.zx, global0.d, firstLeadingBit(arg_3.x), vec4<f32>(arg_1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_1.b)), arg_1.b), 923f, -1918f), arg_1.a);
    let var_0 = arg_1;
    var var_1 = Struct_5(vec4<f32>(arg_1.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-558f - _wgslsmith_f_op_f32(var_0.b * 1000f)))), -602f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(1790f)), arg_1.b, arg_1.c.x)))));
    global0 = Struct_1(reverseBits(~select(vec2<i32>(4974i, -34034i), u_input.b, all(arg_1.c.wwz))), global0.b, u_input.a, global0.d, (!any(vec4<bool>(false, false, false, global0.e)) & (_wgslsmith_clamp_i32(38594i, 0i, 1i) <= global0.c)) != var_0.c.x);
    var var_2 = Struct_2(Struct_1(~vec2<i32>(_wgslsmith_dot_vec4_i32(arg_3, arg_3), ~u_input.b.x), var_1.a, ~abs(arg_3.x | -42923i), _wgslsmith_f_op_vec4_f32(var_1.a - _wgslsmith_f_op_vec4_f32(select(global0.b, global0.d, var_0.c))), arg_1.a), Struct_1(vec2<i32>(u_input.a, arg_3.x), _wgslsmith_f_op_vec4_f32(var_1.a - var_1.a), u_input.a, vec4<f32>(arg_1.b, -1074f, 228f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-872f)), _wgslsmith_f_op_f32(exp2(var_0.b))))), true), vec4<u32>(7603u, ~((4294967295u >> (arg_2 % 32u)) << ((0u & u_input.e) % 32u)), 32293u, _wgslsmith_mod_u32(abs(arg_0.x) | ~u_input.e, u_input.e)), _wgslsmith_div_i32(-max(-2147483647i, -1i), global0.c) << ((1u & arg_0.x) % 32u));
    return -1i;
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: i32) -> Struct_1 {
    let var_0 = ~arg_1;
    var var_1 = _wgslsmith_f_op_f32(round(-1327f)) >= _wgslsmith_f_op_f32(floor(1191f));
    let var_2 = Struct_1(_wgslsmith_sub_vec2_i32(~(~max(vec2<i32>(arg_2, 54581i), vec2<i32>(2147483647i, 52266i))), vec2<i32>(0i, ~arg_0.x >> ((u_input.d & var_0) % 32u))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.b.x, _wgslsmith_f_op_f32(global0.b.x + global0.b.x), -662f, global0.b.x))), func_3(~vec2<u32>(u_input.d, ~arg_1), Struct_4(global0.c < -2147483647i, -1436f, select(select(vec4<bool>(global0.e, false, global0.e, global0.e), vec4<bool>(false, false, global0.e, global0.e), global0.e), !vec4<bool>(global0.e, false, true, false), !global0.e)), 0u, reverseBits(arg_0)), global0.b, global0.e | all(select(select(vec3<bool>(false, global0.e, false), vec3<bool>(global0.e, global0.e, true), true), select(vec3<bool>(global0.e, true, global0.e), vec3<bool>(true, global0.e, false), global0.e), !global0.e)));
    let var_3 = arg_0;
    global0 = var_2;
    return Struct_1(vec2<i32>(u_input.b.x, 1i & _wgslsmith_div_i32(firstTrailingBit(arg_2), u_input.a & -736i)), vec4<f32>(-735f, var_2.b.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.b.x, var_2.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1349f, global0.b.x)))), -349f), var_2.a.x, _wgslsmith_f_op_vec4_f32(select(var_2.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.d * var_2.b)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.b - var_2.d))), select(vec4<bool>(true, true, true, global0.e), select(select(vec4<bool>(false, false, false, global0.e), vec4<bool>(true, true, var_2.e, false), global0.e), !vec4<bool>(var_2.e, false, var_2.e, true), all(vec3<bool>(global0.e, false, global0.e))), select(!vec4<bool>(global0.e, global0.e, true, var_2.e), vec4<bool>(false, true, global0.e, var_2.e), !global0.e)))), all(select(select(select(vec3<bool>(global0.e, false, var_2.e), vec3<bool>(true, false, false), vec3<bool>(true, global0.e, true)), vec3<bool>(true, true, true), !var_2.e), vec3<bool>(var_2.e, true, true), !(!vec3<bool>(global0.e, var_2.e, global0.e)))));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_3) -> vec3<i32> {
    global0 = func_2(abs(~vec4<i32>(firstLeadingBit(23521i), global0.c, arg_3.a.a.x >> (1u % 32u), 33985i)), 4294967295u, ~abs(global0.a.x));
    var var_0 = Struct_4(false, global0.d.x, !(!(!select(vec4<bool>(true, arg_3.a.e, arg_3.a.e, false), vec4<bool>(global0.e, false, arg_3.a.e, true), arg_1.e))));
    var var_1 = vec4<f32>(global0.d.x, 1130f, 343f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(-arg_0))), 1000f));
    let var_2 = _wgslsmith_f_op_vec3_f32(-arg_3.a.d.wwy);
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(-arg_3.a.b)))))));
    return ~countOneBits(max(vec3<i32>(u_input.b.x, arg_1.a.x, -28i), vec3<i32>(2147483647i, u_input.a, arg_1.a.x))) | (vec3<i32>(~(31189i | arg_3.a.c), -15951i, arg_1.c) << (firstLeadingBit(~vec3<u32>(u_input.c, u_input.d, 11599u)) % vec3<u32>(32u)));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_5(global0.b);
    var var_1 = 1i;
    var var_2 = global0.d.x;
    global0 = func_2(_wgslsmith_add_vec4_i32(min(vec4<i32>(0i, 0i, global0.a.x, ~global0.a.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.x, u_input.b.x, u_input.a, -2147483647i), vec4<i32>(global0.c, global0.c, -42408i, 45944i), vec4<i32>(2147483647i, global0.c, u_input.a, -21517i)) ^ vec4<i32>(arg_1.x, -2147483647i, 93379i, -1i)), vec4<i32>(global0.c & 33844i, reverseBits(arg_1.x), arg_1.x, ~1i) << ((~vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c) >> ((vec4<u32>(u_input.d, u_input.e, 10634u, 4294967295u) >> (vec4<u32>(4294967295u, u_input.e, u_input.e, u_input.c) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u))), ~_wgslsmith_dot_vec2_u32(min(vec2<u32>(u_input.e, u_input.e) & vec2<u32>(38620u, u_input.e), ~vec2<u32>(u_input.d, 22288u)), firstTrailingBit(max(vec2<u32>(97604u, 1u), vec2<u32>(86249u, 35564u)))), -5121i);
    let var_3 = func_1(_wgslsmith_f_op_f32(f32(-1f) * -566f), Struct_1(~(vec2<i32>(-1i) * -global0.a), var_0.a, i32(-1i) * -1i, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-267f, arg_0.x, -1140f, arg_0.x), _wgslsmith_div_vec4_f32(var_0.a, vec4<f32>(697f, arg_0.x, global0.b.x, global0.d.x)), vec4<bool>(true, global0.e, global0.e, global0.e))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, var_0.a.x, -127f) + vec4<f32>(global0.d.x, var_0.a.x, arg_0.x, -1000f)))), !all(vec2<bool>(false, true))), vec3<f32>(_wgslsmith_f_op_f32(trunc(2513f)), _wgslsmith_div_f32(global0.b.x, 1000f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(arg_0.x, arg_0.x))))))), Struct_3(Struct_1(arg_1.zx, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(global0.d, vec4<f32>(-681f, -1915f, arg_0.x, -1000f))), global0.d), arg_1.x, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_0.a))), any(vec2<bool>(global0.e, global0.e)))));
    return Struct_1(abs(-vec2<i32>(_wgslsmith_dot_vec3_i32(arg_1, vec3<i32>(arg_1.x, global0.c, u_input.b.x)), 34342i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(global0.b, vec4<f32>(-1336f, 1720f, arg_0.x, 223f)), _wgslsmith_f_op_vec4_f32(-global0.d))) - vec4<f32>(arg_0.x, 126f, global0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -426f))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -284f), _wgslsmith_f_op_f32(var_0.a.x + -1193f), global0.b.x, _wgslsmith_div_f32(arg_0.x, 1000f))))), -1i, vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.x) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(480f * 802f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1008f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_div_f32(global0.d.x, global0.d.x), any(vec4<bool>(false, true, global0.e, false)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-723f, arg_0.x)))))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(global0.d.zwy))), _wgslsmith_add_vec3_i32(func_1(_wgslsmith_f_op_f32(-global0.d.x), Struct_1(vec2<i32>(-1i, -2147483647i), vec4<f32>(-489f, global0.d.x, global0.d.x, global0.b.x), u_input.b.x, vec4<f32>(global0.d.x, -699f, 1000f, global0.b.x), true), global0.b.ywz, Struct_3(Struct_1(vec2<i32>(23877i, 39909i), vec4<f32>(-1068f, -1218f, -1147f, -588f), -1i, global0.b, global0.e))), vec3<i32>(458i, 74163i, countOneBits(global0.a.x))) ^ vec3<i32>(_wgslsmith_mult_i32(global0.c, u_input.b.x), u_input.b.x, 2147483647i));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(func_2(firstTrailingBit(vec4<i32>(var_0.c, u_input.b.x, -49836i, global0.c)), u_input.d, -global0.a.x).b.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1794f + global0.b.x)))), _wgslsmith_f_op_f32(f32(-1f) * -344f)));
    global0 = Struct_1(_wgslsmith_mult_vec2_i32(var_0.a >> (vec2<u32>(1u, u_input.d) % vec2<u32>(32u)), vec2<i32>(select(var_0.c, -global0.c, global0.e), abs(-4898i))), _wgslsmith_f_op_vec4_f32(abs(var_0.d)), max(global0.a.x, firstTrailingBit(1i)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.d.x, 1135f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.d.x, var_1)) * -598f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + var_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x - 1031f))), ~(u_input.c >> (~14836u % 32u)) > 1u);
    var_0 = func_2(~vec4<i32>(func_4(global0.b.xxy, vec3<i32>(0i, 11290i, 0i)).a.x << (_wgslsmith_mult_u32(0u, u_input.e) % 32u), ~_wgslsmith_add_i32(38880i, var_0.c), _wgslsmith_dot_vec3_i32(~vec3<i32>(-25049i, u_input.a, 0i), abs(vec3<i32>(global0.c, u_input.a, var_0.c))), i32(-1i) * -2147483647i), ~u_input.c | _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.c, 16485u & u_input.d, 0u, ~82898u), select(vec4<u32>(48356u, 1u, 1u, 18708u) << (vec4<u32>(u_input.c, u_input.e, u_input.e, 4294967295u) % vec4<u32>(32u)), vec4<u32>(0u, u_input.e, u_input.c, u_input.e) >> (vec4<u32>(u_input.e, 11066u, 4294967295u, 0u) % vec4<u32>(32u)), select(vec4<bool>(global0.e, true, var_0.e, true), vec4<bool>(false, global0.e, global0.e, true), vec4<bool>(var_0.e, true, true, var_0.e)))), min(5516i, _wgslsmith_mult_i32(global0.c, global0.a.x)));
    global0 = func_2(-(~vec4<i32>(global0.a.x & var_0.c, -var_0.a.x, ~global0.c, -1i)), 16713u, 11387i);
    var_0 = func_4(global0.d.wzz, -reverseBits(vec3<i32>(u_input.a, ~global0.a.x, ~var_0.c)));
    var var_2 = true;
    var_0 = func_2(_wgslsmith_add_vec4_i32(select(vec4<i32>(_wgslsmith_sub_i32(var_0.a.x, var_0.a.x), var_0.c, func_1(-976f, Struct_1(var_0.a, vec4<f32>(var_1, 819f, 495f, 112f), global0.c, vec4<f32>(global0.b.x, global0.b.x, global0.d.x, -1622f), global0.e), vec3<f32>(var_0.d.x, global0.b.x, var_0.d.x), Struct_3(Struct_1(var_0.a, vec4<f32>(359f, var_0.d.x, var_1, -165f), global0.c, global0.b, true))).x, i32(-1i) * -19593i), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-37300i, 56310i, var_0.a.x, global0.a.x), vec4<i32>(var_0.c, var_0.c, 33353i, -1375i)), vec4<i32>(var_0.c, var_0.c, u_input.a, 15400i)), select(select(vec4<bool>(false, false, global0.e, false), vec4<bool>(true, false, global0.e, global0.e), vec4<bool>(global0.e, var_0.e, global0.e, global0.e)), !vec4<bool>(var_0.e, true, var_0.e, false), !vec4<bool>(global0.e, var_0.e, true, true))), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.c, 9634i, 1i, u_input.b.x), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.c, -2147483647i, u_input.b.x, global0.a.x), vec4<i32>(2147483647i, 16581i, -22734i, 2147483647i)), countOneBits(vec4<i32>(u_input.b.x, -2147483647i, var_0.c, var_0.c))) & countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(15653i, 0i, global0.a.x, -1106i), vec4<i32>(global0.a.x, 21315i, -1i, u_input.b.x)))), u_input.d, _wgslsmith_sub_i32(15342i | _wgslsmith_mult_i32(var_0.c, -5341i | u_input.a), ~max(-2147483647i, -22759i)));
    global0 = Struct_1(firstLeadingBit(select(vec2<i32>(global0.a.x, u_input.a), -vec2<i32>(-13563i, global0.a.x), !var_0.e)) << (_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.e, 1u), vec2<u32>(u_input.e, 4294967295u)), ~(~vec2<u32>(u_input.e, 1u)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d, 8350u), vec2<u32>(72981u, u_input.e)) >> (min(vec2<u32>(7013u, 4294967295u), vec2<u32>(u_input.d, u_input.e)) % vec2<u32>(32u))) % vec2<u32>(32u)), global0.d, min(select(~(-73827i), ~_wgslsmith_mod_i32(global0.c, global0.c), var_0.e), _wgslsmith_mod_i32(global0.a.x, func_1(_wgslsmith_f_op_f32(-var_0.b.x), Struct_1(global0.a, var_0.b, u_input.b.x, vec4<f32>(var_0.d.x, global0.b.x, 509f, -1000f), var_0.e), _wgslsmith_f_op_vec3_f32(select(global0.b.yzy, vec3<f32>(global0.b.x, var_0.b.x, 583f), vec3<bool>(global0.e, true, false))), Struct_3(Struct_1(vec2<i32>(var_0.a.x, 0i), vec4<f32>(-132f, 577f, var_0.d.x, 914f), var_0.c, global0.d, false))).x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-447f, 279f, -460f, global0.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1421f, -110f, 255f, var_0.d.x)))))), var_0.b, select(!(!vec4<bool>(true, false, true, var_0.e)), vec4<bool>(global0.e, false, false, var_0.e), true))), -46803i > (-_wgslsmith_sub_i32(u_input.a, 0i) ^ countOneBits(0i)));
    let x = u_input.a;
    s_output = StorageBuffer(37657u, vec3<u32>(min(~19179u, u_input.e), ~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(1u, 4179u)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.e, 0u), vec2<u32>(u_input.c, u_input.c))), ~_wgslsmith_mod_u32(u_input.d, 4294967295u)));
}

