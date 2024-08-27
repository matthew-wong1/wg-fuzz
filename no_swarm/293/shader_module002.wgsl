struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: bool,
    d: vec4<i32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 11>;

var<private> global1: i32 = 0i;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<f32>) -> vec2<f32> {
    let var_0 = -_wgslsmith_clamp_vec3_i32(reverseBits(min(vec3<i32>(u_input.d.x, -1i, 55015i), select(vec3<i32>(u_input.e.x, 2147483647i, -2147483647i), vec3<i32>(-1i, u_input.e.x, -1i), true))), vec3<i32>(-85929i, -_wgslsmith_div_i32(-1i, u_input.d.x), _wgslsmith_mult_i32(u_input.d.x, u_input.e.x)), abs(vec3<i32>(u_input.d.x, u_input.e.x, u_input.e.x) >> (vec3<u32>(4294967295u, 35915u, u_input.b) % vec3<u32>(32u))) ^ ~countOneBits(vec3<i32>(u_input.e.x, 2147483647i, 1i)));
    let var_1 = Struct_1(select(vec2<bool>(all(select(global0[_wgslsmith_index_u32(2872u, 11u)], global0[_wgslsmith_index_u32(u_input.a, 11u)], true)), all(select(global0[_wgslsmith_index_u32(25398u, 11u)], global0[_wgslsmith_index_u32(27976u, 11u)], global0[_wgslsmith_index_u32(u_input.b, 11u)]))), vec2<bool>(false, true), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), false)), ~min(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, u_input.a, u_input.a), vec4<u32>(62979u, u_input.c, 12807u, u_input.c)), u_input.b, ~u_input.c, max(u_input.a, u_input.a)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a, 11858u, u_input.b, 110943u), vec4<u32>(u_input.b, 4294967295u, 14969u, 27493u), abs(vec4<u32>(u_input.a, 8195u, u_input.c, 6024u)))), any(vec3<bool>(any(vec2<bool>(true, true)), any(vec4<bool>(true, true, false, false)), all(vec4<bool>(true, true, true, true)))), abs(vec4<i32>(_wgslsmith_mod_i32(0i, -1i), var_0.x, 0i, u_input.e.x ^ 43555i)) ^ (~countOneBits(vec4<i32>(var_0.x, var_0.x, 61203i, -1i)) | vec4<i32>(_wgslsmith_clamp_i32(var_0.x, u_input.e.x, -1i), 2147483647i, _wgslsmith_clamp_i32(-1i, 2147483647i, -31666i), _wgslsmith_clamp_i32(2147483647i, 45798i, 83286i))), any(vec4<bool>(true, true, true, true)));
    var var_2 = _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(var_1.b.xxw & var_1.b.zwy, var_1.b.zzy), 35452u);
    let var_3 = vec2<i32>(_wgslsmith_clamp_i32(~(-2147483647i), 5776i, ~(var_1.d.x ^ 2147483647i)), var_1.d.x) | -u_input.e;
    let var_4 = var_1;
    return _wgslsmith_f_op_vec2_f32(-arg_0.zy);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec3<u32>, arg_3: i32) -> vec2<bool> {
    global1 = arg_3;
    let var_0 = arg_0;
    var var_1 = -620f;
    let var_2 = !(any(arg_0.a) & (all(global0[_wgslsmith_index_u32(arg_1, 11u)]) | !var_0.e)) & true;
    let var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-535f, _wgslsmith_f_op_f32(sign(1041f)))) * _wgslsmith_f_op_vec2_f32(func_3(vec3<f32>(_wgslsmith_f_op_f32(1532f - 1000f), -1120f, _wgslsmith_f_op_f32(sign(-551f))))))));
    return vec2<bool>(true, arg_0.c);
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: i32) -> Struct_1 {
    global1 = -1i;
    var var_0 = Struct_1(select(vec2<bool>(true, all(vec3<bool>(true, false, true)) && true), vec2<bool>(true, true), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), false), func_2(Struct_1(vec2<bool>(false, true), vec4<u32>(54687u, u_input.a, 4294967295u, 14209u), false, vec4<i32>(11874i, arg_2, arg_2, arg_1), false), 20798u & u_input.a, vec3<u32>(49633u, u_input.a, 4294967295u), -8724i), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)))), _wgslsmith_mod_vec4_u32(abs(min(~vec4<u32>(33774u, u_input.a, 4294967295u, u_input.c), ~vec4<u32>(u_input.c, 39620u, u_input.a, u_input.c))), ~vec4<u32>(u_input.b, u_input.b, firstTrailingBit(u_input.c), reverseBits(u_input.c))), func_2(Struct_1(vec2<bool>(true, true), abs(vec4<u32>(u_input.c, 1u, 50806u, u_input.c)), true, ~(~vec4<i32>(2147483647i, 1i, u_input.d.x, -2994i)), true & (9158i < arg_1)), countOneBits(4294967295u), reverseBits(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.b, u_input.b), vec3<u32>(49089u, 121056u, u_input.b), vec3<u32>(19771u, 4294967295u, 0u)), vec3<u32>(u_input.c, 4294967295u, u_input.c) | vec3<u32>(u_input.a, 4294967295u, 1u), true)), _wgslsmith_dot_vec2_i32(countOneBits(countOneBits(u_input.e)), u_input.d | (u_input.e | u_input.e))).x, select(_wgslsmith_sub_vec4_i32(-vec4<i32>(arg_1, arg_1, arg_2, u_input.d.x), countOneBits(vec4<i32>(-2147483647i, arg_1, arg_1, arg_2))), vec4<i32>(u_input.d.x, 2759i, firstLeadingBit(2147483647i), _wgslsmith_sub_i32(u_input.d.x, 38086i)), true) & countOneBits(vec4<i32>(-18636i, 9558i, -53128i, -15942i) ^ vec4<i32>(-1i, arg_2, 47740i, -1i)), true);
    let var_1 = var_0.b.wzy;
    var_0 = Struct_1(vec2<bool>(var_0.b.x != _wgslsmith_dot_vec2_u32(abs(var_1.yx), vec2<u32>(36947u, 4294967295u) | vec2<u32>(18526u, u_input.b)), !(-565f >= arg_0)), vec4<u32>(reverseBits(var_1.x), _wgslsmith_div_u32(u_input.c, max(14141u, 0u)) >> (_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.c, var_1.x), var_0.b.yzz), var_0.b.wzz) % 32u), var_1.x, 1u), var_0.a.x, ~(vec4<i32>(-8057i | var_0.d.x, arg_1, reverseBits(-2147483647i), arg_2 | 1i) ^ var_0.d), !func_2(Struct_1(select(var_0.a, vec2<bool>(false, var_0.a.x), vec2<bool>(var_0.a.x, var_0.e)), vec4<u32>(4294967295u, 4294967295u, var_0.b.x, 1u), true, var_0.d, false), ~var_0.b.x, ~vec3<u32>(u_input.c, 30210u, 4307u), -2147483647i).x);
    var_0 = Struct_1(!(!vec2<bool>(!var_0.c, false)), vec4<u32>(u_input.a, ~(~_wgslsmith_dot_vec4_u32(var_0.b, var_0.b)), 0u, ~_wgslsmith_dot_vec2_u32(~var_1.yz, ~var_1.zx)), _wgslsmith_add_u32(var_0.b.x, ~0u) != ~(~firstTrailingBit(u_input.c)), (max(vec4<i32>(0i, u_input.e.x, var_0.d.x, arg_1), var_0.d | vec4<i32>(arg_2, var_0.d.x, 8287i, arg_2)) ^ (~var_0.d & var_0.d)) >> (vec4<u32>(_wgslsmith_mult_u32(1u, var_0.b.x), u_input.c, 45600u, var_0.b.x) % vec4<u32>(32u)), var_0.a.x);
    return Struct_1(!vec2<bool>(var_0.c, select(true, var_0.c, false) || false), max(var_0.b, _wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, 26544u & var_0.b.x, ~var_0.b.x, _wgslsmith_dot_vec3_u32(var_0.b.yww, var_0.b.zyx)), vec4<u32>(~var_1.x, reverseBits(70732u), _wgslsmith_mult_u32(var_0.b.x, var_1.x), var_0.b.x))), all(!select(select(vec4<bool>(var_0.c, var_0.e, true, true), vec4<bool>(var_0.a.x, false, false, var_0.a.x), var_0.c), vec4<bool>(var_0.e, false, true, false), select(vec4<bool>(true, var_0.a.x, true, var_0.e), vec4<bool>(false, true, false, var_0.a.x), false))), var_0.d, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) * _wgslsmith_f_op_f32(-183f - 732f)))) - _wgslsmith_f_op_f32(ceil(232f))), min(u_input.d.x, u_input.e.x), reverseBits(~(-(u_input.d.x ^ 0i))));
    let var_1 = u_input.b;
    global0 = array<vec3<bool>, 11>();
    let var_2 = true;
    var var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_add_i32(firstTrailingBit(u_input.e.x), _wgslsmith_mod_i32(~(-13917i), -u_input.e.x))), 39632u, ~var_3.b.wx, vec2<i32>(_wgslsmith_add_i32(~reverseBits(var_0.d.x), var_3.d.x), u_input.d.x), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2016f, 241f)), -214f), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-947f, 135f, var_3.c)), -537f, var_3.d.x < 2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1159f))), !func_2(Struct_1(vec2<bool>(false, var_2), var_0.b, var_3.a.x, vec4<i32>(1048i, u_input.e.x, -24404i, var_0.d.x), var_2), ~881u, vec3<u32>(var_0.b.x, 50070u, 1u) & vec3<u32>(4294967295u, u_input.c, u_input.a), reverseBits(u_input.e.x)))));
}

