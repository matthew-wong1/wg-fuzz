struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec3<f32>,
    d: vec3<i32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec3<bool>, 18>;

var<private> global2: array<bool, 5>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<u32>) -> u32 {
    return arg_1.x;
}

fn func_2() -> vec3<i32> {
    global1 = array<vec3<bool>, 18>();
    global2 = array<bool, 5>();
    let var_0 = Struct_3(vec4<u32>(u_input.b, func_3(global0.a.a, ~vec4<u32>(u_input.b, global0.a.e, global0.a.e, 0u)) ^ (1u >> (~u_input.b % 32u)), 1u, abs(global0.a.e)));
    var var_1 = global0.a;
    var var_2 = vec4<bool>(abs(_wgslsmith_mod_u32(~var_1.e, var_1.e << (global0.a.e % 32u))) <= abs(reverseBits(max(7410u, 0u))), false, true, _wgslsmith_div_f32(global0.a.c.x, _wgslsmith_f_op_f32(sign(global0.a.a.x))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(319f + _wgslsmith_f_op_f32(floor(var_1.c.x))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-909f))))));
    return _wgslsmith_sub_vec3_i32(-select(_wgslsmith_clamp_vec3_i32(vec3<i32>(global0.a.d.x, 0i, global0.a.d.x), countOneBits(var_1.d), vec3<i32>(-31235i, 2147483647i, global0.a.d.x)), _wgslsmith_mod_vec3_i32(~var_1.d, firstTrailingBit(vec3<i32>(-1i, -36073i, u_input.a))), !var_2.xwx), select(firstTrailingBit(firstTrailingBit(global0.a.d)), abs(var_1.d), true) << (vec3<u32>(_wgslsmith_clamp_u32(~4294967295u, global0.a.e ^ u_input.b, 24109u), ~global0.a.e, 4294967295u) % vec3<u32>(32u)));
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_2(Struct_1(global0.a.c, global2[_wgslsmith_index_u32(u_input.b, 5u)], _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(global0.a.c - global0.a.a))), vec3<i32>(_wgslsmith_add_i32(global0.a.d.x, global0.a.d.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, global0.a.d.x, 854i, 29214i), vec4<i32>(u_input.a, 2147483647i, u_input.a, 0i)), _wgslsmith_div_i32(1i, -1i)) >> (vec3<u32>(102167u, global0.a.e, 100521u) % vec3<u32>(32u)), u_input.b << (reverseBits(u_input.b) % 32u)), global0.a.d.zz);
    let var_1 = Struct_4(Struct_3(~_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b, 4294967295u, 24666u, 0u), ~vec4<u32>(14203u, u_input.b, 15928u, var_0.a.e))), func_2(), min(var_0.a.d.x, _wgslsmith_sub_i32(select(~0i, _wgslsmith_add_i32(1i, 0i), !var_0.a.b), var_0.a.d.x)));
    let var_2 = -188f;
    global0 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.c.x) - -1504f), _wgslsmith_f_op_f32(max(var_2, _wgslsmith_f_op_f32(f32(-1f) * -379f))), -889f), !(!all(vec4<bool>(var_0.a.b, false, var_0.a.b, global0.a.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_0.a.c, _wgslsmith_f_op_vec3_f32(abs(var_0.a.c)), true != global2[_wgslsmith_index_u32(38010u, 5u)]))), _wgslsmith_add_vec3_i32(var_0.a.d, vec3<i32>(countOneBits(global0.b.x), ~var_0.b.x, ~(-34576i))), var_0.a.e << (~firstLeadingBit(37069u) % 32u)), _wgslsmith_mult_vec2_i32(-reverseBits(-var_1.b.zy), vec2<i32>(-2147483647i, u_input.a << (0u % 32u)) << (var_1.a.a.zw % vec2<u32>(32u))));
    let var_3 = -(~(-(vec4<i32>(2147483647i, -46060i, var_1.c, 63566i) & vec4<i32>(var_0.b.x, global0.a.d.x, 4892i, var_0.a.d.x)))) ^ ~(-(vec4<i32>(var_0.b.x, 23446i, 61716i, -2147483647i) >> (~var_1.a.a % vec4<u32>(32u))));
    return Struct_2(global0.a, global0.b);
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: vec3<f32>) -> Struct_2 {
    let var_0 = Struct_3(max(reverseBits(vec4<u32>(min(global0.a.e, 5262u), u_input.b, 1u, arg_0)), vec4<u32>(arg_0, max(countOneBits(59949u), ~0u), _wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, arg_0), 1u >> (arg_2.x % 32u)), global0.a.e)));
    let var_1 = func_1().a;
    let var_2 = var_1.d.x;
    return Struct_2(func_1().a, abs(reverseBits(-vec2<i32>(var_1.d.x, global0.a.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(false, !all(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 5u)], global0.a.c.x <= global0.a.a.x, global0.a.b, true)));
    var var_1 = vec4<i32>(-2147483647i, global0.b.x, -1i, u_input.a);
    global0 = func_4(max(global0.a.e, min(_wgslsmith_dot_vec2_u32(vec2<u32>(17255u, global0.a.e), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, global0.a.e), vec2<u32>(0u, 58410u))), _wgslsmith_mult_u32(u_input.b << (11169u % 32u), 1u))), func_1(), ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 39467u, u_input.b) | vec3<u32>(global0.a.e, 33078u, 15720u), ~vec3<u32>(u_input.b, u_input.b, 4294967295u)) << (vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.b, 1u), u_input.b & global0.a.e), 52648u, _wgslsmith_mod_u32(abs(global0.a.e), 6390u)) % vec3<u32>(32u)), global0.a.a);
    let var_2 = ~countOneBits(var_1.x);
    var var_3 = vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.a, global0.b.x) << (~global0.a.e % 32u), _wgslsmith_div_i32(var_2, _wgslsmith_clamp_i32(u_input.a, u_input.a, -1i))) >> (select(4294967295u, func_3(func_1().a.a, _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 0u, global0.a.e, global0.a.e), vec4<u32>(4294967295u, 4294967295u, global0.a.e, 2717u))), _wgslsmith_f_op_f32(max(global0.a.a.x, -300f)) <= global0.a.a.x) % 32u), _wgslsmith_dot_vec2_i32(abs(max(global0.b, vec2<i32>(39543i, 2147483647i)) << (vec2<u32>(global0.a.e, u_input.b) % vec2<u32>(32u))), vec2<i32>(2147483647i << (u_input.b % 32u), min(var_2, func_4(1u, Struct_2(Struct_1(global0.a.c, true, global0.a.c, vec3<i32>(21633i, 0i, -28767i), u_input.b), vec2<i32>(-1i, var_2)), vec3<u32>(u_input.b, 4294967295u, global0.a.e), global0.a.a).a.d.x))));
    var var_4 = _wgslsmith_div_u32(_wgslsmith_mod_u32(4699u ^ (~global0.a.e >> (15804u % 32u)), global0.a.e), u_input.b);
    let var_5 = vec2<u32>(func_1().a.e, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_add_u32(global0.a.e, u_input.b), ~u_input.b, ~global0.a.e, global0.a.e), abs(vec4<u32>(5289u, u_input.b, 43094u, u_input.b))), select(min(firstLeadingBit(vec4<u32>(26654u, 0u, global0.a.e, 4294967295u)), vec4<u32>(u_input.b, 0u, 0u, 20254u)), ~select(vec4<u32>(u_input.b, global0.a.e, u_input.b, 1u), vec4<u32>(global0.a.e, 19218u, 23478u, u_input.b), var_0.x), !select(vec4<bool>(false, var_0.x, var_0.x, global2[_wgslsmith_index_u32(0u, 5u)]), vec4<bool>(global0.a.b, false, false, false), var_0.x))));
    var var_6 = -(~(~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, var_2, -4129i, -32670i), vec4<i32>(-1i, 1i, 60624i, var_2) & vec4<i32>(var_2, var_2, 0i, global0.b.x))));
    let var_7 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.a.c.x - _wgslsmith_f_op_f32(global0.a.c.x * 1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.a.x, _wgslsmith_f_op_f32(select(global0.a.a.x, -214f, global0.a.b))))))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(_wgslsmith_add_i32(~10638i, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.b.x, u_input.a), global0.b)), 1i), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1022f, 571f, global0.a.c.x, global0.a.a.x))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(366f, global0.a.a.x, 436f, 776f)) - _wgslsmith_div_vec4_f32(vec4<f32>(global0.a.c.x, var_7, -182f, 376f), vec4<f32>(global0.a.a.x, var_7, 244f, 215f)))))));
}

