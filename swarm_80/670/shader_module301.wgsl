struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: u32,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27>;

var<private> global1: bool = true;

var<private> global2: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>, arg_2: i32) -> vec4<i32> {
    global2 = vec2<bool>(global2.x | all(select(vec2<bool>(global2.x, true), vec2<bool>(global2.x, true), all(vec4<bool>(global2.x, true, global2.x, global2.x)))), any(!vec2<bool>(!global2.x, all(vec2<bool>(false, true)))));
    global1 = false;
    let var_0 = !vec3<bool>(true, false, arg_0 != -(i32(-1i) * -1i));
    let var_1 = var_0;
    global0 = array<f32, 27>();
    return ~(-vec4<i32>(0i, ~(arg_2 | u_input.a), 2147483647i, -_wgslsmith_div_i32(-21551i, 7973i)));
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: u32, arg_3: Struct_3) -> Struct_1 {
    global2 = vec2<bool>(!global2.x, false);
    let var_0 = _wgslsmith_clamp_vec3_i32(select(u_input.b ^ vec3<i32>(-13371i, u_input.b.x, u_input.b.x), u_input.b, !any(vec3<bool>(arg_0.c, arg_0.c, true))) << (arg_0.b.e.yyx % vec3<u32>(32u)), vec3<i32>(-1i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(14073i, arg_1, 2147483647i, arg_3.a.x), func_3(u_input.d.x, arg_0.b.b.xx, arg_1)), _wgslsmith_add_i32(-firstTrailingBit(41452i), 1i), ~(u_input.a & arg_1)), vec3<i32>(-61991i, 2147483647i, 0i));
    var var_1 = Struct_3(_wgslsmith_add_vec2_i32(-_wgslsmith_mod_vec2_i32(-vec2<i32>(var_0.x, 0i), func_3(u_input.d.x, vec2<u32>(arg_2, arg_2), arg_3.c).xw), arg_3.a >> (vec2<u32>(~arg_0.b.e.x, 4294967295u) % vec2<u32>(32u))), 4294967295u, var_0.x, arg_3.d);
    let var_2 = var_1.d;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2549f, global0[_wgslsmith_index_u32(arg_3.b, 27u)]) + var_1.d.a.x), -504f)), vec4<u32>(~(~var_2.b.c), abs(var_1.b), ~(~29333u), ~u_input.c), var_2.b.e.x, 737f, ~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, arg_0.b.b.x, u_input.c, 0u), select(_wgslsmith_sub_vec4_u32(vec4<u32>(51956u, u_input.c, 104140u, arg_0.b.e.x), arg_3.d.b.b), countOneBits(vec4<u32>(1u, var_2.b.b.x, 27969u, 20137u)), vec4<bool>(arg_0.c, global2.x, true, arg_3.d.c))));
    return Struct_1(-293f, var_3.b, _wgslsmith_mult_u32(arg_2, _wgslsmith_add_u32(var_2.b.e.x, firstTrailingBit(1u))), -983f, _wgslsmith_mult_vec4_u32(vec4<u32>(~arg_3.b, 0u, ~arg_3.b, ~arg_2), arg_0.b.e >> (~arg_3.d.b.b % vec4<u32>(32u))) & min(~_wgslsmith_clamp_vec4_u32(arg_0.b.b, vec4<u32>(arg_3.b, 1u, var_2.b.e.x, 51027u), vec4<u32>(1u, 4294967295u, arg_0.b.c, 4294967295u)), var_1.d.b.e));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: f32) -> vec2<bool> {
    global1 = arg_0.x;
    var var_0 = vec2<bool>(all(arg_0.xxz), all(arg_0));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1424f, _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(max(arg_1.e.x, 37783u), 27u)])), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.a), -996f, arg_0.x))) + vec3<f32>(_wgslsmith_f_op_f32(ceil(733f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.a))), _wgslsmith_f_op_f32(arg_1.a - global0[_wgslsmith_index_u32(u_input.c, 27u)]))), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(773f, arg_2)), -504f)), -110f)), reverseBits(vec4<u32>(~u_input.c, 51405u, arg_1.e.x, _wgslsmith_mult_u32(arg_1.c, 4294967295u))), reverseBits(_wgslsmith_dot_vec4_u32(firstLeadingBit(arg_1.e), vec4<u32>(u_input.c, 26954u, u_input.c, arg_1.e.x))), 753f, arg_1.b), global2.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)), var_1.b.d, _wgslsmith_f_op_f32(-1716f + _wgslsmith_f_op_f32(exp2(var_1.a.x)))))));
    var var_3 = Struct_2(var_2.xyw, Struct_1(374f, _wgslsmith_mod_vec4_u32(arg_1.b, _wgslsmith_clamp_vec4_u32(firstTrailingBit(var_1.b.b), _wgslsmith_clamp_vec4_u32(arg_1.b, vec4<u32>(29407u, arg_1.b.x, var_1.b.b.x, arg_1.b.x), vec4<u32>(0u, 0u, var_1.b.c, 0u)), vec4<u32>(var_1.b.c, 1u, 0u, u_input.c))), 1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.a))) * var_1.b.d), min(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 1u, var_1.b.b.x, u_input.c), vec4<u32>(arg_1.b.x, u_input.c, var_1.b.e.x, u_input.c)) & ~vec4<u32>(4294967295u, var_1.b.e.x, var_1.b.e.x, var_1.b.c), vec4<u32>(32475u, 0u, min(4294967295u, var_1.b.b.x), 2343u))), false);
    return vec2<bool>(global2.x, !(u_input.a >= u_input.d.x));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: vec2<bool>) -> Struct_4 {
    var var_0 = Struct_3(u_input.d, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(~20906u, _wgslsmith_mod_u32(u_input.c, 44518u)), ~(~vec2<u32>(32600u, 0u))), _wgslsmith_clamp_vec2_u32(vec2<u32>(11321u, 46290u) | vec2<u32>(18090u, u_input.c), firstLeadingBit(vec2<u32>(u_input.c, u_input.c)), ~vec2<u32>(u_input.c, 0u)) >> (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, u_input.c), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(0u, 1u))) % vec2<u32>(32u))), arg_1.a.x, Struct_2(vec3<f32>(func_2(Struct_2(vec3<f32>(global0[_wgslsmith_index_u32(u_input.c, 27u)], global0[_wgslsmith_index_u32(u_input.c, 27u)], global0[_wgslsmith_index_u32(41785u, 27u)]), Struct_1(-695f, vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), 1u, global0[_wgslsmith_index_u32(u_input.c, 27u)], vec4<u32>(u_input.c, 56247u, u_input.c, u_input.c)), arg_2.x), _wgslsmith_dot_vec4_i32(vec4<i32>(9258i, -2147483647i, -57963i, arg_1.a.x), vec4<i32>(-2147483647i, arg_1.a.x, u_input.a, u_input.d.x)), u_input.c, Struct_3(vec2<i32>(arg_1.a.x, -2147483647i), u_input.c, -2147483647i, Struct_2(vec3<f32>(1816f, global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(u_input.c, 27u)]), Struct_1(1510f, vec4<u32>(u_input.c, u_input.c, 1u, 0u), 26845u, global0[_wgslsmith_index_u32(1u, 27u)], vec4<u32>(0u, 1u, 4294967295u, u_input.c)), true))).d, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -871f))), global0[_wgslsmith_index_u32(1u, 27u)]), Struct_1(171f, ~vec4<u32>(u_input.c, u_input.c, 3526u, 0u) >> (vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c) % vec4<u32>(32u)), u_input.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(14822u, 27u)]))), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, u_input.c, 0u, u_input.c), ~vec4<u32>(u_input.c, 1u, 45565u, 1u))), false));
    var_0 = Struct_3(-u_input.d, ~36536u, 0i, var_0.d);
    let var_1 = _wgslsmith_sub_vec2_i32(max(firstLeadingBit(_wgslsmith_mult_vec2_i32(~arg_1.a.xy, min(vec2<i32>(var_0.a.x, u_input.b.x), vec2<i32>(var_0.c, arg_1.a.x)))), var_0.a), vec2<i32>(-2147483647i, arg_1.a.x & _wgslsmith_div_i32(var_0.c, 10608i)) & abs(vec2<i32>(var_0.c, ~(-44957i))));
    global1 = false;
    var var_2 = Struct_4(vec3<i32>(_wgslsmith_dot_vec3_i32(~(~vec3<i32>(42685i, var_0.c, 25446i)), -(vec3<i32>(0i, var_1.x, 24889i) >> (var_0.d.b.b.xzx % vec3<u32>(32u)))), _wgslsmith_sub_i32(arg_1.a.x, 63675i), ~0i), vec4<bool>(arg_0.x, any(!vec2<bool>(false, arg_0.x)), 1i > ((17684i | var_0.a.x) | var_1.x), arg_0.x));
    return Struct_4(_wgslsmith_mult_vec3_i32(u_input.b, _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(arg_1.a.x, 1i), _wgslsmith_div_i32(arg_1.a.x, -28856i), _wgslsmith_clamp_i32(var_2.a.x, 0i, var_2.a.x)), var_2.a)), vec4<bool>((var_1.x > abs(arg_1.a.x)) || (false || global2.x), arg_0.x, any(!var_2.b.yx), !(min(var_1.x, var_0.c) == func_3(u_input.d.x, vec2<u32>(1u, 1u), u_input.d.x).x)));
}

fn func_6(arg_0: Struct_4) -> bool {
    var var_0 = min(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, (1u >> (u_input.c % 32u)) | (u_input.c >> (u_input.c % 32u)), 4294967295u), ~abs(_wgslsmith_div_vec3_u32(vec3<u32>(14493u, u_input.c, u_input.c), vec3<u32>(46807u, u_input.c, u_input.c)))), ~max(~vec3<u32>(47541u, 37545u, u_input.c), vec3<u32>(1u, 4294967295u, u_input.c) << (~vec3<u32>(u_input.c, 48923u, u_input.c) % vec3<u32>(32u))));
    let var_1 = !vec4<bool>(global2.x, true, false, any(arg_0.b));
    var var_2 = global2.x;
    let var_3 = var_1;
    let var_4 = func_4(!var_1, func_2(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(407f, -199f, global0[_wgslsmith_index_u32(var_0.x, 27u)])), Struct_1(1454f, _wgslsmith_mod_vec4_u32(vec4<u32>(8149u, u_input.c, var_0.x, var_0.x), vec4<u32>(u_input.c, 45585u, var_0.x, var_0.x)), var_0.x, _wgslsmith_f_op_f32(round(-468f)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 32448u, 4294967295u, 74574u), vec4<u32>(61237u, 27557u, 4294967295u, var_0.x))), any(select(arg_0.b, vec4<bool>(false, arg_0.b.x, global2.x, var_1.x), var_3))), ~(-u_input.b.x), min(~(0u << (var_0.x % 32u)), 32783u), Struct_3(vec2<i32>(abs(27650i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 0i, arg_0.a.x), arg_0.a)), ~u_input.c, max(-2147483647i, _wgslsmith_sub_i32(0i, -11986i)), Struct_2(vec3<f32>(global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(var_0.x, 27u)], global0[_wgslsmith_index_u32(var_0.x, 27u)]), func_2(Struct_2(vec3<f32>(132f, -870f, global0[_wgslsmith_index_u32(var_0.x, 27u)]), Struct_1(149f, vec4<u32>(u_input.c, u_input.c, var_0.x, 1u), 50925u, -1000f, vec4<u32>(u_input.c, var_0.x, 1u, var_0.x)), true), -71203i, 33212u, Struct_3(arg_0.a.xy, var_0.x, u_input.d.x, Struct_2(vec3<f32>(-789f, 817f, global0[_wgslsmith_index_u32(var_0.x, 27u)]), Struct_1(1000f, vec4<u32>(u_input.c, u_input.c, var_0.x, u_input.c), var_0.x, -777f, vec4<u32>(u_input.c, u_input.c, 97100u, u_input.c)), true))), !var_3.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~var_0.x, 27u)] * _wgslsmith_div_f32(1795f, 1290f))), _wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(39546u, 27u)] - global0[_wgslsmith_index_u32(0u, 27u)]), _wgslsmith_f_op_f32(f32(-1f) * -538f))), true)));
    return (var_0.x < (1u << (select(_wgslsmith_mod_u32(u_input.c, 4294967295u), var_0.x, false) % 32u))) != all(!vec3<bool>(arg_0.b.x, false, false));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec3<i32>, arg_3: u32) -> i32 {
    var var_0 = 16226u;
    var var_1 = 0u;
    global2 = vec2<bool>(true, func_6(func_5(select(vec4<bool>(global2.x, true, true, true), !vec4<bool>(global2.x, false, global2.x, false), !vec4<bool>(true, true, global2.x, global2.x)), Struct_4(-arg_1, vec4<bool>(global2.x, global2.x, true, global2.x)), func_4(select(vec4<bool>(true, false, global2.x, global2.x), vec4<bool>(false, true, global2.x, global2.x), vec4<bool>(global2.x, global2.x, global2.x, false)), func_2(Struct_2(vec3<f32>(arg_0.a, global0[_wgslsmith_index_u32(u_input.c, 27u)], arg_0.a), arg_0, global2.x), 1i, arg_0.c, Struct_3(vec2<i32>(75706i, arg_2.x), 1u, 48684i, Struct_2(vec3<f32>(1122f, -2026f, 316f), Struct_1(458f, vec4<u32>(arg_3, u_input.c, u_input.c, 59073u), arg_3, global0[_wgslsmith_index_u32(arg_3, 27u)], vec4<u32>(40639u, 27954u, arg_3, 0u)), global2.x))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 27u)] * -215f)))));
    global0 = array<f32, 27>();
    var_1 = arg_3;
    return min(arg_2.x, _wgslsmith_sub_i32(0i, (arg_2.x << (abs(arg_3) % 32u)) & arg_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!global2.x) | false;
    var var_1 = ~(~abs(~countOneBits(vec3<u32>(u_input.c, u_input.c, u_input.c))));
    let var_2 = !(-_wgslsmith_clamp_i32(i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(22336i, u_input.d.x), vec2<i32>(u_input.d.x, 38581i)), _wgslsmith_mult_i32(u_input.d.x, 0i)) == reverseBits(firstTrailingBit(func_1(Struct_1(global0[_wgslsmith_index_u32(43036u, 27u)], vec4<u32>(u_input.c, 0u, var_1.x, 0u), u_input.c, 1077f, vec4<u32>(u_input.c, 70378u, var_1.x, u_input.c)), vec3<i32>(u_input.a, -2147483647i, 3783i), u_input.b, var_1.x))));
    var var_3 = _wgslsmith_div_u32(_wgslsmith_add_u32(firstTrailingBit(4294967295u), ~(u_input.c >> (5214u % 32u)) << (func_2(Struct_2(vec3<f32>(267f, global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(48822u, 27u)]), Struct_1(-1776f, vec4<u32>(u_input.c, 22959u, 4294967295u, u_input.c), u_input.c, global0[_wgslsmith_index_u32(23691u, 27u)], vec4<u32>(var_1.x, var_1.x, u_input.c, 57492u)), true), -2147483647i, ~4294967295u, Struct_3(u_input.b.xz, 1u, u_input.a, Struct_2(vec3<f32>(global0[_wgslsmith_index_u32(var_1.x, 27u)], 2008f, 411f), Struct_1(global0[_wgslsmith_index_u32(u_input.c, 27u)], vec4<u32>(var_1.x, 4294967295u, var_1.x, 102350u), var_1.x, global0[_wgslsmith_index_u32(1u, 27u)], vec4<u32>(0u, var_1.x, 0u, u_input.c)), true))).c % 32u)), var_1.x >> (10093u % 32u));
    var_1 = firstTrailingBit(vec3<u32>(~0u, 12943u, ~4294967295u));
    var var_4 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-516f))))));
    var var_5 = func_2(Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(43722u, 27u)], global0[_wgslsmith_index_u32(71438u, 27u)], global2.x)), _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(u_input.c, 27u)], 590f, var_2)), _wgslsmith_f_op_f32(floor(1000f))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 27u)], 920f, global0[_wgslsmith_index_u32(var_1.x, 27u)])))), Struct_1(_wgslsmith_f_op_f32(round(1220f)), vec4<u32>(u_input.c, 4294967295u, ~var_1.x, 1u), var_1.x, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_1.x, 27u)] - _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(var_1.x, 27u)]))), ~(~vec4<u32>(116284u, 62869u, 0u, u_input.c))), func_5(select(!vec4<bool>(false, false, var_0, global2.x), vec4<bool>(false, var_0, true, global2.x), select(vec4<bool>(global2.x, var_2, var_0, var_0), vec4<bool>(var_0, false, var_2, false), false)), func_5(vec4<bool>(var_2, global2.x, false, var_2), func_5(vec4<bool>(true, global2.x, false, false), Struct_4(u_input.b, vec4<bool>(false, false, var_2, false)), vec2<bool>(var_2, true)), vec2<bool>(true, true)), select(func_5(vec4<bool>(global2.x, var_0, global2.x, true), Struct_4(u_input.b, vec4<bool>(var_0, false, false, var_0)), vec2<bool>(var_2, false)).b.wx, select(vec2<bool>(var_0, false), vec2<bool>(true, false), global2.x), vec2<bool>(global2.x, var_0))).b.x), u_input.a & 18200i, firstLeadingBit(u_input.c), Struct_3(u_input.b.zy, u_input.c, u_input.a, Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-125f, 1094f, -865f) * vec3<f32>(-1423f, global0[_wgslsmith_index_u32(u_input.c, 27u)], global0[_wgslsmith_index_u32(10488u, 27u)]))), Struct_1(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1.x, 27u)]), ~vec4<u32>(4648u, 98597u, u_input.c, 1885u), u_input.c, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 27u)] - global0[_wgslsmith_index_u32(u_input.c, 27u)]), vec4<u32>(4294967295u, var_1.x, var_1.x, var_1.x)), func_6(Struct_4(vec3<i32>(-1i, -42883i, u_input.a), vec4<bool>(false, false, true, var_0))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.e.x >> (_wgslsmith_mult_u32(func_2(Struct_2(vec3<f32>(-682f, global0[_wgslsmith_index_u32(var_1.x, 27u)], -367f), Struct_1(-856f, vec4<u32>(14763u, var_1.x, 0u, 25508u), var_5.c, -323f, var_5.e), true), ~u_input.a, var_5.e.x ^ 0u, Struct_3(vec2<i32>(u_input.a, 2147483647i), 4294967295u, 8992i, Struct_2(vec3<f32>(-556f, 1422f, var_5.d), Struct_1(253f, vec4<u32>(1u, u_input.c, 64704u, 46586u), 1u, var_5.d, var_5.e), global2.x))).c, u_input.c) % 32u), _wgslsmith_div_i32(i32(-1i) * -32854i, 1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_1.x, 27u)], var_5.d), global0[_wgslsmith_index_u32(1u, 27u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_5.a, 171f) * vec2<f32>(var_5.a, var_5.d)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1681f, var_5.d))))), -(_wgslsmith_sub_vec4_i32(~vec4<i32>(1592i, u_input.d.x, u_input.a, u_input.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d.x, u_input.b.x, 2147483647i, 21049i), vec4<i32>(-1i, u_input.a, u_input.b.x, u_input.a), vec4<i32>(u_input.b.x, -1i, -13602i, 0i))) >> (firstLeadingBit(vec4<u32>(49564u, 0u, 1u, 18207u)) % vec4<u32>(32u))), ~abs(_wgslsmith_sub_u32(31218u, ~4294967295u)));
}

