struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_4,
    c: Struct_2,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec2<f32>) -> vec4<i32> {
    var var_0 = vec2<i32>(0i, 0i);
    let var_1 = ~(~u_input.d.wxz);
    var_0 = vec2<i32>(-1i, -1i);
    var var_2 = Struct_2(global0.a.xy, global0.c.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.c.c) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.b.x, -2531f, arg_0.x, global0.c.c.x)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.c.b.c, -125f, -561f, 532f))), vec4<bool>(global0.c.d.b, false, false, global0.c.b.b))) - global0.c.c)), Struct_1(vec3<u32>(~max(10379u, 4294967295u), var_1.x, u_input.d.x), firstTrailingBit(global0.c.a.x) != _wgslsmith_clamp_i32(1i, -1i, 1i), _wgslsmith_f_op_f32(step(227f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1431f * arg_0.x))))), false);
    var var_3 = global0.a.x;
    return abs(vec4<i32>(var_0.x, _wgslsmith_add_i32(57292i, var_0.x), var_2.a.x, global0.c.a.x));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    global0 = Struct_5(_wgslsmith_mult_vec3_i32(min(select(global0.a, vec3<i32>(-13185i, 22470i, 18763i), arg_1.b), global0.a), global0.a) << (global0.c.b.a % vec3<u32>(32u)), Struct_4(arg_1.a.x, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.d), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-485f, global0.b.b.x, global0.d.x)))))), global0.c, global0.c.c.yyx);
    var var_0 = Struct_3(_wgslsmith_sub_vec4_i32(min(~func_3(vec2<f32>(-142f, arg_0)), func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_1.c)))), vec4<i32>(~u_input.b, i32(-1i) * -u_input.b, ~(-37621i) >> (_wgslsmith_div_u32(44836u, global0.c.b.a.x) % 32u), global0.c.a.x)), 7516i & firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-18545i, global0.c.a.x, 0i), abs(global0.a))), Struct_2(global0.a.zx, Struct_1(~_wgslsmith_div_vec3_u32(arg_1.a, vec3<u32>(arg_1.a.x, u_input.a.x, 18781u)), global0.c.d.b, global0.b.b.x), vec4<f32>(global0.b.b.x, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.d.x))), global0.c.b.c), arg_1, true), arg_0 > 1045f);
    var var_1 = true;
    let var_2 = vec3<bool>(global0.c.b.b, true, var_0.c.d.b);
    let var_3 = true;
    return Struct_1(vec3<u32>(4294967295u, _wgslsmith_add_u32(u_input.d.x & 4294967295u, ~4294967295u), ~13746u), !arg_1.b, arg_0);
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> Struct_5 {
    let var_0 = Struct_4(global0.c.d.a.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.d.c), _wgslsmith_f_op_f32(f32(-1f) * -2791f))), -1000f, -2004f) - global0.b.b));
    global0 = Struct_5(reverseBits(global0.a), Struct_4(u_input.d.x ^ u_input.c, _wgslsmith_f_op_vec3_f32(-global0.d)), global0.c, vec3<f32>(_wgslsmith_f_op_f32(152f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -504f) + _wgslsmith_f_op_f32(global0.b.b.x * arg_1.c.x))), -182f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(493f, var_0.b.x)) * _wgslsmith_f_op_f32(-var_0.b.x))));
    return Struct_5(vec3<i32>(_wgslsmith_add_i32(min(~6194i, -36514i), ~(~u_input.b)), 1i, ~(~8615i)), var_0, arg_1, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1542f), arg_1.d.c, 777f))))));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: vec4<f32>, arg_3: f32) -> Struct_1 {
    global0 = func_4(~min(16005i, _wgslsmith_clamp_i32(-global0.c.a.x, reverseBits(u_input.b), arg_1.x ^ global0.c.a.x)), Struct_2(~arg_1.yz, Struct_1(global0.c.d.a, any(arg_0), arg_2.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_3, arg_2.x, arg_3, 1386f), arg_2), _wgslsmith_f_op_vec4_f32(-arg_2))), func_2(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global0.c.d.c, arg_2.x))), global0.c.b), arg_0.x));
    global0 = Struct_5(vec3<i32>(global0.a.x, 0i, 2147483647i), func_4(-2147483647i, func_4(global0.a.x, Struct_2(vec2<i32>(59662i, 0i), global0.c.d, vec4<f32>(786f, global0.c.b.c, 145f, 438f), global0.c.d, 433f > global0.b.b.x)).c).b, Struct_2(vec2<i32>(-(~global0.c.a.x), _wgslsmith_add_i32(firstLeadingBit(-31896i), -34027i)), global0.c.d, arg_2, Struct_1(~vec3<u32>(1u, 4294967295u, 4294967295u), 1578f <= arg_3, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1760f - -1093f)))), all(!vec4<bool>(false, global0.c.b.b, false, arg_0.x))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(global0.d.x, -1551f)), -850f)) * _wgslsmith_f_op_f32(-161f * -1000f)), func_4(u_input.b, Struct_2(~global0.c.a, Struct_1(global0.c.b.a, global0.c.e, global0.c.b.c), _wgslsmith_f_op_vec4_f32(-global0.c.c), func_4(2147483647i, global0.c).c.b, global0.c.d.b)).d.x));
    let var_0 = u_input.d.yyy;
    let var_1 = 54232u;
    global0 = Struct_5(min(func_4(-arg_1.x, func_4(0i, Struct_2(vec2<i32>(global0.a.x, global0.c.a.x), global0.c.d, vec4<f32>(arg_3, arg_3, -252f, global0.c.d.c), global0.c.d, true)).c).a, _wgslsmith_sub_vec3_i32(vec3<i32>(~u_input.b, -56923i, -1i), select(arg_1, ~arg_1, select(vec3<bool>(true, false, true), vec3<bool>(true, false, global0.c.b.b), false)))), func_4(global0.a.x, global0.c).b, global0.c, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-806f * _wgslsmith_f_op_f32(global0.b.b.x + global0.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_3, global0.b.b.x, global0.c.b.b))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(670f - global0.c.b.c), _wgslsmith_f_op_f32(max(arg_3, arg_2.x)), select(true, false, global0.c.e)))), _wgslsmith_f_op_vec3_f32(-arg_2.yyx), !global0.c.e)));
    return func_2(arg_2.x, global0.c.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_u32(0u, u_input.a.x, u_input.a.x);
    let var_1 = ~global0.c.d.a.x;
    global0 = Struct_5(_wgslsmith_add_vec3_i32(vec3<i32>(global0.c.a.x, ~(~global0.a.x), global0.c.a.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(-u_input.b, u_input.b, abs(global0.c.a.x)), select(-global0.a, vec3<i32>(35394i, u_input.b, global0.c.a.x), global0.c.e & global0.c.d.b), max(global0.a, vec3<i32>(global0.c.a.x, u_input.b, -8436i)))), Struct_4(u_input.d.x, vec3<f32>(251f, global0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.b.b.x)) + -1000f))), Struct_2(global0.a.xz, func_1(select(!vec4<bool>(false, global0.c.d.b, global0.c.d.b, true), select(vec4<bool>(global0.c.d.b, true, global0.c.b.b, false), vec4<bool>(false, global0.c.e, true, false), global0.c.d.b), true), vec3<i32>(-1i) * -vec3<i32>(38117i, global0.c.a.x, global0.c.a.x), vec4<f32>(_wgslsmith_div_f32(global0.d.x, global0.b.b.x), _wgslsmith_f_op_f32(global0.b.b.x * global0.d.x), -1030f, -405f), global0.d.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-729f, global0.d.x, global0.c.d.c, global0.d.x)), global0.c.d, true), global0.b.b);
    global0 = Struct_5(_wgslsmith_mod_vec3_i32(global0.a, vec3<i32>(select(max(global0.c.a.x, -430i), u_input.b ^ -14153i, !global0.c.e), _wgslsmith_mod_i32(global0.c.a.x, -2147483647i) & u_input.b, -global0.a.x)), func_4(-global0.c.a.x, Struct_2(vec2<i32>(global0.c.a.x << (global0.b.a % 32u), 1i), Struct_1(~vec3<u32>(883u, global0.b.a, global0.c.d.a.x), false | global0.c.d.b, _wgslsmith_f_op_f32(-global0.b.b.x)), vec4<f32>(global0.c.c.x, _wgslsmith_f_op_f32(f32(-1f) * -3021f), _wgslsmith_f_op_f32(step(710f, 485f)), global0.d.x), func_1(vec4<bool>(true, false, global0.c.e, global0.c.b.b), global0.a, _wgslsmith_f_op_vec4_f32(-global0.c.c), func_4(u_input.b, Struct_2(global0.c.a, Struct_1(vec3<u32>(0u, var_0, 18629u), global0.c.b.b, global0.d.x), vec4<f32>(-859f, 1000f, global0.c.d.c, global0.c.d.c), Struct_1(u_input.a.wzz, global0.c.e, 1000f), false)).b.b.x), global0.c.d.b)).b, func_4(-2147483647i >> (1u % 32u), Struct_2((global0.a.xx | vec2<i32>(-20275i, -1i)) ^ vec2<i32>(global0.c.a.x, 1i), Struct_1(~u_input.a.ywy, false, -1000f), func_4(global0.c.a.x, func_4(u_input.b, global0.c).c).c.c, Struct_1(~vec3<u32>(var_1, 7136u, 30301u), global0.c.d.b, _wgslsmith_f_op_f32(global0.d.x + -520f)), true)).c, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-437f, 432f, _wgslsmith_f_op_f32(global0.d.x * global0.b.b.x)), global0.d)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-846f, global0.b.b.x, global0.b.b.x))), global0.c.c.yzy)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.c.c.ywz - global0.c.c.yyx) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(288f, global0.b.b.x, global0.c.b.c))))), vec3<bool>(-global0.a.x > ~(-1i), global0.c.b.b, !any(vec4<bool>(true, global0.c.b.b, global0.c.d.b, true))))));
    let var_2 = global0.c.d;
    global0 = func_4(u_input.b, Struct_2(vec2<i32>(-_wgslsmith_div_i32(2147483647i, u_input.b), u_input.b), Struct_1(abs(vec3<u32>(77342u, 1u, 5562u) | var_2.a), true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1034f, global0.d.x)), _wgslsmith_f_op_f32(1000f + global0.d.x))), vec4<f32>(global0.b.b.x, _wgslsmith_f_op_f32(651f - global0.b.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.c, 817f)) - 951f), 192f), func_2(_wgslsmith_f_op_f32(-var_2.c), Struct_1(vec3<u32>(1u, 1u, 1u), true, global0.b.b.x)), true));
    let var_3 = Struct_1(u_input.d.xxw, !all(vec4<bool>(global0.c.b.b, global0.a.x >= 0i, false, any(vec2<bool>(global0.c.e, var_2.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.c, 1126f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1017f)) - -627f)));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(-global0.c.a.x, global0.c).c.d.c, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-global0.c.c))), vec2<f32>(var_3.c, global0.d.x), _wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(25171u, 25944u, 29163u ^ var_0)), abs(vec3<u32>(~global0.c.b.a.x, var_2.a.x, var_1))));
}

