struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

var<private> global1: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec4<f32> {
    var var_0 = Struct_1((firstTrailingBit(arg_1.a & vec2<i32>(27872i, 9625i)) >> (vec2<u32>(u_input.a.x, arg_0.x) % vec2<u32>(32u))) ^ arg_3.a, arg_3.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-983f, arg_3.b.x, _wgslsmith_f_op_f32(step(global1.b.x, -1943f))))), all(!vec2<bool>(true, any(vec4<bool>(arg_3.d, false, false, arg_2.d)))), false);
    let var_1 = !(!vec2<bool>(arg_2.d, true));
    var_0 = global0[_wgslsmith_index_u32(u_input.a.x, 12u)];
    global0 = array<Struct_1, 12>();
    var var_2 = vec3<u32>(arg_0.x, ((~0u | _wgslsmith_sub_u32(35764u, arg_0.x)) ^ (~u_input.a.x ^ _wgslsmith_sub_u32(arg_0.x, 5408u))) ^ 31172u, ~17330u);
    return vec4<f32>(arg_2.b.x, _wgslsmith_f_op_f32(floor(1053f)), arg_1.c.x, var_0.b.x);
}

fn func_2(arg_0: bool, arg_1: vec4<f32>) -> bool {
    global0 = array<Struct_1, 12>();
    global0 = array<Struct_1, 12>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1 * arg_1)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec4<u32>(u_input.a.x, 49163u, u_input.b, 4294967295u), Struct_1(global1.a, vec3<f32>(260f, 149f, arg_1.x), vec3<f32>(arg_1.x, 653f, -1897f), false, global1.e), Struct_1(vec2<i32>(global1.a.x, -27396i), global1.c, arg_1.xzx, false, false), Struct_1(vec2<i32>(1i, -1i), global1.b, vec3<f32>(global1.b.x, -1000f, arg_1.x), global1.e, false))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1203f, 142f, -895f, arg_1.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1441f, -294f, -662f, -1220f)), arg_1, global1.d))));
    var var_1 = global1.a.x;
    global1 = Struct_1(~vec2<i32>(global1.a.x, _wgslsmith_mult_i32(global1.a.x, global1.a.x)), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec4_f32(func_3(countOneBits(vec4<u32>(u_input.b, u_input.a.x, 14382u, u_input.b)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, u_input.b), 12u)], Struct_1(vec2<i32>(-1i, 0i), global1.c, arg_1.wyy, false, true), Struct_1(vec2<i32>(1i, 6039i), vec3<f32>(global1.c.x, 1257f, -920f), vec3<f32>(global1.c.x, -1389f, 1078f), false, false))).x)), _wgslsmith_f_op_f32(select(global1.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-413f)), -686f), arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-arg_1.x))) - arg_1.x)), vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * 982f) + arg_1.x) + arg_1.x), global1.c.x), true, -1491f <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1155f, _wgslsmith_f_op_f32(floor(-261f)))))));
    return arg_0;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(max(countOneBits(global1.a) << (vec2<u32>(4294967295u, u_input.b) % vec2<u32>(32u)), global1.a), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.c.x, _wgslsmith_f_op_f32(select(384f, 433f, true)), _wgslsmith_f_op_f32(step(481f, global1.b.x))))), vec3<f32>(_wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(-758f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -929f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(global1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.b.x))), func_2(any(vec2<bool>(global1.d, true)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(212f, global1.b.x, 1000f, 643f))))))), false, global1.a.x == (_wgslsmith_clamp_i32(~global1.a.x, ~global1.a.x, global1.a.x) | -_wgslsmith_mult_i32(-1i, global1.a.x)));
    var_0 = global0[_wgslsmith_index_u32(~(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, u_input.b, u_input.a.x, 30131u), ~vec4<u32>(u_input.a.x, u_input.a.x, 0u, 51277u)), 1u) >> (u_input.a.x % 32u)), 12u)];
    let var_1 = ~(~1997u);
    global0 = array<Struct_1, 12>();
    var var_2 = 4294967295u;
    return global0[_wgslsmith_index_u32(select(~1u, _wgslsmith_sub_u32(1u, u_input.b), false), 12u)];
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    global1 = arg_1;
    let var_0 = Struct_1(vec2<i32>(-arg_1.a.x, _wgslsmith_mult_i32(arg_1.a.x, -10988i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(global1.b, global1.b)) + _wgslsmith_f_op_vec3_f32(-global1.b)), vec3<f32>(631f, _wgslsmith_f_op_f32(f32(-1f) * -213f), _wgslsmith_f_op_f32(min(-972f, 312f)))))), func_1().b, arg_1.d, true);
    let var_1 = ~_wgslsmith_sub_vec2_u32(~(countOneBits(u_input.a.xy) >> (vec2<u32>(1u, 5087u) % vec2<u32>(32u))), _wgslsmith_sub_vec2_u32(abs(max(vec2<u32>(u_input.b, u_input.a.x), vec2<u32>(38053u, u_input.b))), vec2<u32>(u_input.a.x, firstTrailingBit(u_input.b))));
    global0 = array<Struct_1, 12>();
    let var_2 = firstTrailingBit(select(vec4<i32>(-1i, arg_1.a.x, global1.a.x << (u_input.a.x % 32u), -3593i), vec4<i32>(var_0.a.x, var_0.a.x, countOneBits(-14076i), reverseBits(arg_1.a.x)), !any(vec2<bool>(global1.d, var_0.d))) >> (~vec4<u32>(~4294967295u, 1u, 8954u, 1u) % vec4<u32>(32u)));
    return Struct_1(func_1().a, global1.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec4_f32(func_3(vec4<u32>(u_input.a.x, var_1.x, 23722u, _wgslsmith_clamp_u32(4294967295u, 8145u, u_input.b)), Struct_1(-var_0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-785f, var_0.c.x, var_0.c.x)), global1.b, true, false), arg_1, var_0)).wzw * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2225f * 368f) + _wgslsmith_f_op_f32(f32(-1f) * -723f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(169f - -695f), _wgslsmith_f_op_f32(arg_1.c.x + -1023f), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-784f + arg_1.c.x)))), !select(!(!global1.d), true, any(!vec3<bool>(true, arg_1.d, true))), !any(!select(vec2<bool>(false, global1.d), vec2<bool>(arg_1.d, var_0.d), vec2<bool>(var_0.d, global1.d))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    var var_1 = ~_wgslsmith_clamp_i32(global1.a.x, max(_wgslsmith_sub_i32(1i, 0i), abs(global1.a.x)), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(global1.a.x, 2147483647i, -63242i, global1.a.x)), ~vec4<i32>(1i, global1.a.x, global1.a.x, -1i))) <= -1i;
    let var_2 = select(false, global1.d, true);
    var var_3 = func_4(~global1.a.x, func_1());
    var_3 = func_4(~var_3.a.x, global0[_wgslsmith_index_u32(firstTrailingBit(~(~(u_input.b << (u_input.a.x % 32u)))), 12u)]);
    let x = u_input.a;
    s_output = StorageBuffer(~select(min(max(vec4<u32>(7409u, 41989u, 4294967295u, 0u), vec4<u32>(42055u, 1u, 0u, 73801u)), vec4<u32>(u_input.a.x, u_input.b, u_input.b, 0u) << (vec4<u32>(19781u, 0u, 4294967295u, 4294967295u) % vec4<u32>(32u))), ~select(vec4<u32>(32189u, 1u, u_input.b, 1u), vec4<u32>(1u, 0u, 5751u, 123834u), global1.d), var_2), _wgslsmith_div_vec3_u32((u_input.a | vec3<u32>(u_input.b, 22144u, u_input.b)) << (((vec3<u32>(u_input.a.x, u_input.b, 0u) ^ vec3<u32>(u_input.b, u_input.b, u_input.b)) | (vec3<u32>(35729u, 34319u, 69465u) ^ u_input.a)) % vec3<u32>(32u)), min(u_input.a >> (u_input.a % vec3<u32>(32u)), vec3<u32>(min(u_input.b, u_input.b), 4294967295u | u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 0u), vec3<u32>(27257u, 92112u, u_input.b))))), vec3<u32>(firstTrailingBit(u_input.b) | ~14604u, u_input.a.x, u_input.a.x), _wgslsmith_mod_u32(45341u & firstTrailingBit(1u), firstTrailingBit(u_input.a.x)));
}

