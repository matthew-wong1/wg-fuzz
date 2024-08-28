struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: bool,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27>;

var<private> global1: i32;

var<private> global2: array<vec2<f32>, 27>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: u32, arg_3: f32) -> bool {
    let var_0 = any(vec3<bool>(!arg_1.a.c || (!arg_1.a.c || (arg_1.a.c | false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 - arg_1.a.d)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.x))), true));
    let var_1 = Struct_1(_wgslsmith_clamp_u32(~(~(~u_input.a.x)), select(~18832u, 56752u, all(!vec3<bool>(var_0, var_0, false))), 11900u), ~firstTrailingBit(abs(vec4<u32>(13724u, arg_1.a.a, 4294967295u, 1u))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-295f))), _wgslsmith_mod_u32(102634u, ~(~u_input.a.x)));
    let var_2 = var_1;
    var var_3 = arg_1.b;
    var var_4 = select(vec2<bool>(var_0, true), !(!vec2<bool>(var_2.c, all(vec3<bool>(false, arg_1.a.c, false)))), var_2.c);
    return !var_0;
}

fn func_2() -> u32 {
    global2 = array<vec2<f32>, 27>();
    var var_0 = Struct_1(select(~(~44310u & ~u_input.a.x), _wgslsmith_mod_u32(~0u, 4294967295u), func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(625f, -192f, -932f, -616f)), Struct_2(Struct_1(u_input.a.x, vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 4294967295u), false, 1141f, u_input.a.x), vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 27u)], -4024i, global0[_wgslsmith_index_u32(u_input.a.x, 27u)]), vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 27u)], global0[_wgslsmith_index_u32(u_input.a.x, 27u)], -1i, global0[_wgslsmith_index_u32(4294967295u, 27u)]), vec4<u32>(71284u, u_input.a.x, u_input.a.x, 1u)), abs(u_input.a.x), _wgslsmith_div_f32(-3011f, 2014f)) & !select(false, true, false)), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a.x, 4294967295u, 0u, 8381u), ~vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 1u, 1u, u_input.a.x) & vec4<u32>(1u, u_input.a.x, 0u, u_input.a.x)), reverseBits(min(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(19125u, u_input.a.x, 34781u, 4294967295u)))) ^ ~vec4<u32>(4294967295u, ~4294967295u, u_input.a.x, firstTrailingBit(u_input.a.x)), (-countOneBits(global0[_wgslsmith_index_u32(2623u, 27u)]) > 4842i) || true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(118f)), -568f)))), 0u);
    let var_1 = Struct_1(firstLeadingBit(~abs(0u)), _wgslsmith_sub_vec4_u32(countOneBits(~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 18120u, 1u, 134217u), var_0.b, var_0.b)), var_0.b), var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(191f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.d * -395f), _wgslsmith_f_op_f32(f32(-1f) * -656f))) * var_0.d)), reverseBits(31412u));
    var_0 = var_1;
    var_0 = Struct_1(_wgslsmith_mod_u32(1856u, ~(~var_0.e)), var_1.b << (vec4<u32>(81597u, reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 7789u, u_input.a.x), var_0.b)), _wgslsmith_clamp_u32(~53635u, max(u_input.a.x, var_1.a), ~15665u), countOneBits(u_input.a.x)) % vec4<u32>(32u)), var_1.c, -212f, 104982u);
    return 1u;
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-386f + 484f) - _wgslsmith_f_op_f32(-490f * -326f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * 211f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-729f * -165f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1245f)))))), vec3<f32>(_wgslsmith_div_f32(-1063f, 1314f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -261f) + -928f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1485f - -1000f))))));
    global2 = array<vec2<f32>, 27>();
    var var_1 = vec4<i32>(-2147483647i, (~global0[_wgslsmith_index_u32(0u, 27u)] | global0[_wgslsmith_index_u32(0u, 27u)]) & _wgslsmith_mod_i32(4276i, ~(global0[_wgslsmith_index_u32(u_input.a.x, 27u)] | 0i)), global0[_wgslsmith_index_u32(36741u, 27u)] >> (max(0u, _wgslsmith_clamp_u32(~1u, u_input.a.x, u_input.a.x)) % 32u), global0[_wgslsmith_index_u32(func_2(), 27u)] | ~20264i);
    var var_2 = Struct_1(firstTrailingBit(abs(u_input.a.x)), vec4<u32>(~(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 1706u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) ^ 1u), u_input.a.x, ~u_input.a.x, ~(countOneBits(29658u) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, 40275u), vec3<u32>(7661u, 4294967295u, 15372u)) % 32u))), !all(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-400f))))), _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(select(u_input.a.x, u_input.a.x, false), ~u_input.a.x)), u_input.a));
    global0 = array<i32, 27>();
    return Struct_2(Struct_1(abs(37849u), ~vec4<u32>(1u, reverseBits(4294967295u), ~4294967295u, 1u), var_2.c & (-25955i != max(-2147483647i, global0[_wgslsmith_index_u32(4294967295u, 27u)])), _wgslsmith_f_op_f32(min(var_2.d, var_0.x)), ~_wgslsmith_sub_u32(1u, ~var_2.a)), -var_1.yww, ~vec4<i32>(countOneBits(firstTrailingBit(0i)), _wgslsmith_mod_i32(22204i, global0[_wgslsmith_index_u32(~1u, 27u)]), 1i, -8940i), ~var_2.b ^ _wgslsmith_mult_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(369u, 24941u, 53942u, 0u), vec4<u32>(var_2.e, var_2.b.x, u_input.a.x, u_input.a.x)), ~countOneBits(var_2.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!((reverseBits(2147483647i) << (~u_input.a.x % 32u)) <= global0[_wgslsmith_index_u32(u_input.a.x, 27u)]));
    global0 = array<i32, 27>();
    var var_1 = func_1();
    var var_2 = vec3<i32>(-1i) * -min(var_1.c.xxz | (vec3<i32>(2846i, global0[_wgslsmith_index_u32(var_1.d.x, 27u)], global0[_wgslsmith_index_u32(var_1.d.x, 27u)]) | var_1.c.yzw), firstTrailingBit(var_1.c.wwz & vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 27u)], global0[_wgslsmith_index_u32(u_input.a.x, 27u)], global0[_wgslsmith_index_u32(var_1.a.b.x, 27u)])));
    var_1 = Struct_2(Struct_1(~1u, vec4<u32>(var_1.a.e, 5643u, _wgslsmith_sub_u32(~var_1.a.b.x, firstTrailingBit(var_1.a.a)), 1u), true, _wgslsmith_f_op_f32(-var_1.a.d), min(4294967295u, func_1().d.x) & u_input.a.x), _wgslsmith_sub_vec3_i32(firstTrailingBit(~vec3<i32>(var_2.x, -1i, var_1.b.x)) << (_wgslsmith_sub_vec3_u32(~vec3<u32>(var_1.d.x, var_1.a.a, 1875u), abs(vec3<u32>(var_1.d.x, 4294967295u, u_input.a.x))) % vec3<u32>(32u)), var_1.c.xzx), ~vec4<i32>(firstLeadingBit(_wgslsmith_div_i32(-19641i, global0[_wgslsmith_index_u32(1u, 27u)])), 0i >> (abs(u_input.a.x) % 32u), var_1.b.x, var_1.c.x), vec4<u32>(~92074u, _wgslsmith_dot_vec2_u32(~reverseBits(vec2<u32>(var_1.a.e, 0u)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, var_1.d.x), u_input.a)), 43374u, ~(~u_input.a.x)));
    let var_3 = true;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1539f, var_1.a.d)));
    var var_5 = true;
    global1 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-890f, -293f)), -1462f)), ~max(var_1.a.b.ywy, vec3<u32>(1u, 1u, _wgslsmith_sub_u32(var_1.d.x, var_1.a.e))));
}

