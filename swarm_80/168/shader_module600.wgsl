struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-11855i, vec4<i32>(31032i, 18236i, i32(-2147483648), -52610i));

var<private> global1: array<vec2<i32>, 20> = array<vec2<i32>, 20>(vec2<i32>(1i, 0i), vec2<i32>(-193i, -17833i), vec2<i32>(-1i, -14368i), vec2<i32>(29058i, 18672i), vec2<i32>(0i, 56008i), vec2<i32>(21624i, 46530i), vec2<i32>(1i, -1i), vec2<i32>(29369i, 54305i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-20048i, 15865i), vec2<i32>(-18569i, 3962i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-6401i, 39503i), vec2<i32>(0i, 18951i), vec2<i32>(29567i, 2147483647i), vec2<i32>(34125i, i32(-2147483648)), vec2<i32>(-30007i, 1i), vec2<i32>(0i, -17128i), vec2<i32>(1i, 1i), vec2<i32>(63643i, 2147483647i));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> vec4<i32> {
    global1 = array<vec2<i32>, 20>();
    global1 = array<vec2<i32>, 20>();
    let var_0 = false;
    var var_1 = 2147483647i;
    var var_2 = firstLeadingBit(_wgslsmith_clamp_i32(max(2147483647i, global0.a), ~(~_wgslsmith_dot_vec4_i32(global0.b, vec4<i32>(u_input.d.x, global0.b.x, global0.b.x, global0.b.x))), -63976i));
    return abs(global0.b);
}

fn func_2(arg_0: vec4<bool>) -> Struct_4 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -311f), _wgslsmith_f_op_f32(trunc(-137f)), _wgslsmith_f_op_f32(-1000f + -540f), _wgslsmith_f_op_f32(sign(-860f))))), global0.b, global0.b, Struct_2(Struct_1(13575i, _wgslsmith_div_vec4_i32(global0.b, _wgslsmith_clamp_vec4_i32(global0.b, global0.b, global0.b))), Struct_1(select(u_input.a, 1i, any(arg_0)), vec4<i32>(0i, global0.b.x, _wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(0u, 20u)], vec2<i32>(u_input.a, u_input.a)), _wgslsmith_mult_i32(-85i, u_input.d.x))), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.d.x, global0.b.x, 1i), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d.x, -1i, global0.a), vec3<i32>(-520i, -4033i, u_input.d.x))) ^ global0.b.xyw, Struct_1(2147483647i, vec4<i32>(abs(-1i), _wgslsmith_dot_vec2_i32(vec2<i32>(5191i, u_input.a), u_input.d), -15908i, 47959i))));
    let var_1 = Struct_1(-max(-global0.b.x, 2147483647i) | _wgslsmith_clamp_i32(u_input.a, _wgslsmith_sub_i32(-u_input.a, u_input.a | -1i), -3540i), var_0.c);
    var var_2 = var_0.a.wx;
    var_0 = Struct_3(var_0.a, _wgslsmith_clamp_vec4_i32(func_3(), var_0.d.d.b, reverseBits(~(-var_0.d.a.b))), -_wgslsmith_mult_vec4_i32(~vec4<i32>(global0.a, -31838i, -9308i, 0i), countOneBits(vec4<i32>(0i, 0i, global0.b.x, u_input.d.x))) | -vec4<i32>(var_0.c.x, var_0.c.x, -2147483647i, 0i), Struct_2(var_1, var_0.d.b, vec3<i32>(0i, firstLeadingBit(-2147483647i), 2147483647i), Struct_1(_wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(-2147483647i, -8687i)), firstTrailingBit(var_1.b))));
    let var_3 = u_input.c.x;
    return Struct_4(_wgslsmith_f_op_f32(sign(-800f)), 1u, min(14413u, ~var_3) | abs(~66212u));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: vec4<bool>) -> Struct_3 {
    global0 = Struct_1(countOneBits(~arg_0.x ^ 1i), ~vec4<i32>(arg_0.x, 27765i, u_input.d.x, global0.a));
    global1 = array<vec2<i32>, 20>();
    global0 = Struct_1(~(-2147483647i), vec4<i32>(~24537i, _wgslsmith_dot_vec3_i32(global0.b.yzz ^ ~vec3<i32>(-1i, arg_0.x, 0i), vec3<i32>(u_input.a, u_input.d.x, ~0i)), u_input.a, u_input.d.x));
    global0 = Struct_1(_wgslsmith_mult_i32(0i, _wgslsmith_mod_i32(-913i, 2007i)), -(global0.b & _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, u_input.a, 1i, -1i), firstTrailingBit(global0.b))));
    global0 = Struct_1(-firstTrailingBit(_wgslsmith_div_i32(arg_0.x, -7690i) >> (arg_1.c % 32u)), vec4<i32>(min(u_input.a, -u_input.d.x), arg_0.x, 1579i, -(~2147483647i)));
    return Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, arg_1.a, 1685f, arg_1.a) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, arg_1.a, 789f, 524f)))))), _wgslsmith_mult_vec4_i32(countOneBits(global0.b), global0.b ^ ~global0.b), vec4<i32>(global0.b.x << (~1u % 32u), -10904i, _wgslsmith_mod_i32(global0.b.x << ((arg_1.b & u_input.b) % 32u), firstTrailingBit(-29246i) & 2147483647i), arg_0.x), Struct_2(Struct_1(countOneBits(-1i), -vec4<i32>(-2147483647i, arg_0.x, -34848i, arg_0.x) << ((vec4<u32>(60251u, 1u, 31091u, 1u) ^ u_input.c) % vec4<u32>(32u))), Struct_1(global0.a, vec4<i32>(-1i) * -global0.b), -global0.b.zxw & -_wgslsmith_div_vec3_i32(global0.b.wzw, vec3<i32>(u_input.a, global0.b.x, global0.a)), Struct_1(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(global0.b.x, 0i), global0.b.x, 0i), vec4<i32>(u_input.a, ~(-57705i), ~global0.a, 2147483647i))));
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: vec2<u32>) -> Struct_2 {
    var var_0 = func_4(vec2<i32>(u_input.a, ~global0.a), func_2(vec4<bool>(-1148f <= _wgslsmith_f_op_f32(2818f + arg_1), true, arg_1 != _wgslsmith_f_op_f32(-arg_1), select(1u != arg_2.x, true, any(vec2<bool>(false, false))))), vec4<bool>(false, true || any(vec4<bool>(true, false, false, true)), ((i32(-1i) * -11759i) >= _wgslsmith_clamp_i32(45324i, 1i, u_input.d.x)) != false, true));
    let var_1 = !(true | !all(vec4<bool>(true, false, true, true)));
    let var_2 = !(!(!(!var_1)));
    var var_3 = 1i;
    var_0 = Struct_3(var_0.a, firstTrailingBit(((vec4<i32>(-72229i, -9789i, 0i, -11180i) ^ var_0.d.d.b) & (global0.b >> (vec4<u32>(u_input.c.x, u_input.b, arg_2.x, arg_2.x) % vec4<u32>(32u)))) | _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(global0.b, var_0.c), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, -2147483647i, global0.a, 9983i), vec4<i32>(-2147483647i, u_input.a, var_0.c.x, -10407i)))), _wgslsmith_mult_vec4_i32(-var_0.c, global0.b), var_0.d);
    return func_4(vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(min(vec2<i32>(arg_0.x, 0i), global0.b.yy), global0.b.zy), global1[_wgslsmith_index_u32(~11043u | max(0u, arg_2.x), 20u)]), u_input.a), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-722f))), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, 0u, 1u, u_input.c.x)), min(vec4<u32>(arg_2.x, u_input.c.x, 6433u, arg_2.x), u_input.c)), _wgslsmith_mod_u32(countOneBits(4294967295u), _wgslsmith_mod_u32(arg_2.x, arg_2.x))), _wgslsmith_dot_vec2_u32(select(reverseBits(vec2<u32>(arg_2.x, 0u)), u_input.c.xz, var_1 && true), vec2<u32>(30868u ^ u_input.b, _wgslsmith_mod_u32(4294967295u, u_input.c.x)))), select(select(select(vec4<bool>(false, true, var_2, false), !vec4<bool>(true, var_1, var_2, var_2), !vec4<bool>(var_2, false, var_1, var_1)), !vec4<bool>(false, true, true, var_2), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, var_2, var_1, false), vec4<bool>(false, var_2, false, true)), !vec4<bool>(false, var_2, var_1, false), var_1)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(var_2, true, var_2, false), true), select(vec4<bool>(false, false, var_2, var_2), !vec4<bool>(false, var_2, false, var_2), var_2), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, var_2, var_2, var_2), var_1)), false)).d;
}

fn func_5(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: Struct_2) -> bool {
    let var_0 = arg_2.a;
    global1 = array<vec2<i32>, 20>();
    let var_1 = abs(abs(vec2<u32>(~(u_input.c.x >> (u_input.c.x % 32u)), u_input.b)));
    global1 = array<vec2<i32>, 20>();
    global0 = var_0;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(false, func_5(vec3<f32>(929f, 385f, -253f), vec3<bool>(true, true, true), func_1(~vec3<i32>(global0.b.x, u_input.a, u_input.d.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), u_input.c.wx)) || func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), vec3<bool>(true, true, true), func_4(vec2<i32>(-3940i, global0.b.x), Struct_4(240f, 101602u, u_input.c.x), vec4<bool>(true, true, true, true)).d), any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), false);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(select(global1[_wgslsmith_index_u32(u_input.c.x, 20u)] & vec2<i32>(u_input.a, 0i), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, u_input.a), u_input.d), !vec2<bool>(var_0.x, var_0.x)), Struct_4(_wgslsmith_f_op_f32(max(-533f, -905f)), u_input.c.x, 10659u), select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x), var_0.x), !vec4<bool>(false, false, false, var_0.x), 0u != u_input.c.x)).a.x + _wgslsmith_f_op_f32(1f + -1000f)));
    global0 = func_1(global0.b.wxx, _wgslsmith_f_op_f32(select(271f, -1087f, false)), ~vec2<u32>(u_input.b, u_input.c.x)).b;
    let var_2 = countOneBits(select(global0.b, -(~vec4<i32>(u_input.d.x, -1i, global0.a, 0i)), !(!vec4<bool>(var_0.x, var_0.x, true, true))));
    let var_3 = abs(countOneBits(vec3<u32>(4294967295u, abs(31300u), ~u_input.c.x)) ^ _wgslsmith_clamp_vec3_u32(u_input.c.xww, u_input.c.xzx, _wgslsmith_sub_vec3_u32(u_input.c.xww, ~vec3<u32>(43539u, 42652u, u_input.c.x))));
    let var_4 = ~var_3.x;
    var var_5 = true;
    var_5 = false;
    global1 = array<vec2<i32>, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~(~vec3<u32>(4294967295u, u_input.b, 1093u))) << (_wgslsmith_clamp_vec3_u32(u_input.c.xyy >> (vec3<u32>(var_3.x, 4294967295u, var_3.x) % vec3<u32>(32u)), ~reverseBits(vec3<u32>(0u, 0u, var_3.x)), max(u_input.c.wwy, vec3<u32>(var_4, var_3.x, 14630u)) << (~var_3 % vec3<u32>(32u))) % vec3<u32>(32u)));
}

