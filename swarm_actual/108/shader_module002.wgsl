struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec4<bool>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<vec3<f32>, 21>;

var<private> global2: Struct_1 = Struct_1(true, vec2<f32>(471f, -266f), vec4<bool>(false, true, true, false), 200f, 1271f);

var<private> global3: Struct_1;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<bool>) -> i32 {
    let var_0 = Struct_1(!all(select(vec4<bool>(global2.c.x, global3.a, global3.a, global3.a), global2.c, !global3.c)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.b)))), !(!global3.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.x))) - 937f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.d, 828f)));
    var var_1 = Struct_1(global2.c.x, vec2<f32>(global2.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.x)))), var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -916f)) + -1000f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2.b.x + -1173f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-1269f, global2.d, true)))))))));
    var var_2 = arg_0.x;
    global3 = Struct_1(all(!select(select(vec3<bool>(var_1.c.x, arg_0.x, global3.a), vec3<bool>(true, arg_0.x, false), vec3<bool>(global2.c.x, arg_0.x, true)), select(var_1.c.wzy, global2.c.yzz, global2.c.x), select(vec3<bool>(global3.c.x, global3.a, global2.c.x), global3.c.wxz, true))), vec2<f32>(global2.d, _wgslsmith_f_op_f32(abs(413f))), select(var_0.c, vec4<bool>(any(global3.c.wxx) && all(var_0.c.yxx), false, false, true), vec4<bool>(any(vec4<bool>(var_0.c.x, false, var_0.c.x, true)), any(select(vec2<bool>(false, global3.c.x), global3.c.zw, true)), any(select(vec3<bool>(true, false, var_1.a), vec3<bool>(false, arg_0.x, var_0.c.x), var_1.c.wxw)), true)), var_1.b.x, global2.e);
    let var_3 = _wgslsmith_add_i32(countOneBits(-_wgslsmith_mod_i32(155i, abs(-2147483647i))), _wgslsmith_dot_vec3_i32(~(~vec3<i32>(0i, 0i, 35561i)), vec3<i32>(abs(48495i), firstLeadingBit(_wgslsmith_mod_i32(10135i, 35070i)), _wgslsmith_div_i32(1i, 1i))));
    return countOneBits(-52415i);
}

fn func_2() -> vec4<f32> {
    var var_0 = Struct_2(abs(~func_3(global3.c.yw) >> (~u_input.a % 32u)));
    let var_1 = Struct_1(global3.c.x, global3.b, select(select(!global2.c, global2.c, true), !(!(!vec4<bool>(global3.c.x, global2.a, global2.a, true))), vec4<bool>(all(vec2<bool>(global3.c.x, false)), true, global2.a, any(vec4<bool>(global2.a, global3.c.x, global3.c.x, global3.a)) && !global2.a)), -343f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.x)));
    let var_2 = _wgslsmith_f_op_f32(min(global2.d, 327f));
    let var_3 = Struct_1(any(vec2<bool>((global0.x ^ global0.x) > _wgslsmith_dot_vec2_u32(vec2<u32>(38865u, 29080u), vec2<u32>(global0.x, global0.x)), !select(true, false, true))), global2.b, !(!vec4<bool>(any(global2.c.xyy), true, any(vec2<bool>(false, global3.c.x)), !var_1.c.x)), var_2, 433f);
    var var_4 = var_3;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(307f, _wgslsmith_f_op_f32(abs(2600f)), _wgslsmith_f_op_f32(select(var_3.e, 149f, false)), _wgslsmith_f_op_f32(-var_4.d)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1290f, var_4.e, var_1.e, -707f), vec4<f32>(var_1.b.x, var_3.d, 918f, -1000f))), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.b.x, var_4.e, var_1.b.x, var_1.d), vec4<f32>(-937f, global3.e, var_4.b.x, global3.b.x))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.x, -616f, var_2, var_1.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2001f, var_4.b.x, var_3.d, 823f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.d, 525f, var_3.d, var_2), vec4<f32>(105f, var_4.b.x, var_4.e, 531f), false)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-781f, var_3.d, global2.b.x, 1359f) * vec4<f32>(395f, global2.d, -1698f, -1580f))), true)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-481f, var_2, 964f, -2280f), vec4<f32>(var_4.d, global3.e, -293f, -1461f), global3.c.x))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1790f, var_2, 107f, -149f))))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = vec2<u32>(abs(~(~41312u)), countOneBits(global0.x));
    global0 = vec2<u32>(1u, 1u);
    let var_1 = ~17956i;
    let var_2 = Struct_2(countOneBits(var_1));
    var var_3 = global3.a;
    return Struct_1(arg_1.c.x, vec2<f32>(global3.d, _wgslsmith_f_op_f32(-global2.d)), !vec4<bool>(any(global2.c.zx), all(arg_1.c.xz), true & !global2.a, !all(global2.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(arg_1.d)), -515f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.x))))), global2.d);
}

fn func_1(arg_0: vec4<bool>, arg_1: f32, arg_2: f32) -> Struct_1 {
    return func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.d, _wgslsmith_f_op_f32(-402f - _wgslsmith_f_op_f32(arg_1 * arg_2)), -994f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.e), global2.b.x)) - _wgslsmith_f_op_vec4_f32(func_2())), Struct_1(true, _wgslsmith_f_op_vec2_f32(-global2.b), vec4<bool>(all(!arg_0), !(!global3.c.x), select(!global2.c.x, global2.c.x, true), !global2.a || (arg_0.x && global2.a)), _wgslsmith_f_op_f32(global3.d - _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2 * -1551f), _wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1(!(!global2.c), global2.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.d)))) + _wgslsmith_f_op_f32(max(-206f, -1497f))));
    let var_0 = vec2<i32>(_wgslsmith_mod_i32(abs(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(36457i, 39843i, -8126i), vec3<i32>(33193i, 0i, 0i)))), i32(-1i) * -73756i), _wgslsmith_mult_i32(1i, 26276i));
    let var_1 = Struct_1(global2.a, _wgslsmith_f_op_vec2_f32(-func_4(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(551f, -981f, 465f, global2.d), vec4<f32>(858f, -677f, global3.e, global3.d)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.b.x, global2.b.x, global3.d, global2.d)))), Struct_1(false, vec2<f32>(global2.b.x, 817f), vec4<bool>(global3.c.x, false, true, global2.c.x), 1f, _wgslsmith_div_f32(global2.e, global3.b.x))).b), vec4<bool>(!(var_0.x <= 2147483647i), !global2.a, false, global2.e <= global2.d), -1264f, -300f);
    let var_2 = Struct_2(var_0.x);
    var var_3 = Struct_2(-((var_0.x >> (global0.x % 32u)) >> (73219u % 32u)) & countOneBits(_wgslsmith_dot_vec4_i32(max(vec4<i32>(var_2.a, var_0.x, var_0.x, var_0.x), vec4<i32>(-29940i, var_0.x, 2147483647i, var_0.x)), vec4<i32>(1i, var_2.a, 28391i, var_0.x) & vec4<i32>(-17823i, var_0.x, var_2.a, var_2.a))));
    global0 = ~_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(select(_wgslsmith_div_vec2_u32(vec2<u32>(global0.x, 0u), vec2<u32>(u_input.a, u_input.a)), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(u_input.a, global0.x)), global2.a), vec2<u32>(global0.x, 83041u) | ~vec2<u32>(4294967295u, 89697u)), abs(vec2<u32>(1u, 1u)));
    var var_4 = Struct_2(var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-vec4<i32>(-29307i, -16975i, var_4.a, 1i) >> (firstTrailingBit(abs(vec4<u32>(22715u, 0u, global0.x, 1u))) % vec4<u32>(32u))), -7809i, _wgslsmith_div_vec4_u32(select(vec4<u32>(~51442u, ~global0.x, _wgslsmith_clamp_u32(20885u, u_input.a, 0u), abs(global0.x)), select(vec4<u32>(1u, 48768u, 12125u, 56153u), vec4<u32>(19989u, u_input.a, 5162u, 7772u), global2.c.x) >> (~vec4<u32>(63348u, u_input.a, global0.x, u_input.a) % vec4<u32>(32u)), ~global0.x >= reverseBits(global0.x)), ~(vec4<u32>(2658u, u_input.a, global0.x, 44992u) ^ vec4<u32>(global0.x, global0.x, 0u, 28877u)) | ~_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, 0u, u_input.a, u_input.a), vec4<u32>(0u, u_input.a, 31979u, 4294967295u))));
}

