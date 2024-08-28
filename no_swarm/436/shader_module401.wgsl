struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 1>;

var<private> global1: u32 = 29810u;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: vec2<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-arg_2.x);
    global1 = _wgslsmith_div_u32(reverseBits(arg_1.x), ~(~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_1.x, arg_1.x, 24463u, 4294967295u)), firstLeadingBit(vec4<u32>(1u, 100662u, arg_1.x, 0u)))));
    let var_1 = _wgslsmith_dot_vec4_u32(~(~vec4<u32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x) & abs(firstLeadingBit(vec4<u32>(4294967295u, 34223u, arg_1.x, 20644u)))), ~vec4<u32>(4294967295u, ~51960u, countOneBits(40377u), arg_1.x) | (~(vec4<u32>(arg_1.x, 1230u, 47737u, 4294967295u) >> (vec4<u32>(0u, arg_1.x, arg_1.x, 0u) % vec4<u32>(32u))) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(35963u, 29301u, arg_1.x, arg_1.x), countOneBits(vec4<u32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))) % vec4<u32>(32u))));
    var var_2 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, 461f) * vec2<f32>(-586f, 864f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(arg_2, arg_2))))), all(select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), false), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), false), true), vec4<bool>(true, false, true, all(vec2<bool>(true, false))), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), all(vec4<bool>(true, true, false, true))))));
    var var_3 = -_wgslsmith_mult_vec2_i32(max(_wgslsmith_div_vec2_i32(max(u_input.a, u_input.b.yx), select(vec2<i32>(-49667i, 38723i), u_input.c, vec2<bool>(var_2.b, true))), ~_wgslsmith_sub_vec2_i32(u_input.b.zw, vec2<i32>(62160i, u_input.c.x))), -firstTrailingBit(u_input.a >> (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u))));
    return ~0u;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec4<i32>, arg_3: f32) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -140f, arg_3) - vec3<f32>(arg_1, 122f, arg_3))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_3, arg_1) - vec3<f32>(-1779f, arg_1, arg_3))) * vec3<f32>(-140f, _wgslsmith_f_op_f32(ceil(-1201f)), _wgslsmith_f_op_f32(-arg_3)))));
    let var_1 = vec4<u32>(arg_0, ~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0, 1557u), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0, arg_0), 1u)], global0[_wgslsmith_index_u32(arg_0, 1u)] >> (vec2<u32>(arg_0, arg_0) % vec2<u32>(32u))), global0[_wgslsmith_index_u32(20436u, 1u)]), arg_0, ~(~(~(~arg_0))));
    global1 = _wgslsmith_div_u32(select(reverseBits(1u), ~abs(func_3(1109f, var_1.xy, var_0.xx)), true), ~_wgslsmith_dot_vec3_u32(var_1.ywy, var_1.zww));
    global0 = array<vec2<u32>, 1>();
    global1 = ~arg_0;
    return ~var_1.wwy;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    global1 = select(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1405f + _wgslsmith_f_op_f32(min(-1866f, -1015f)))), _wgslsmith_add_vec2_u32(vec2<u32>(arg_0.x, arg_0.x), vec2<u32>(arg_0.x, 1u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.x, -520f)))) + arg_2.a)), 1u, all(select(vec3<bool>(true, false, true), vec3<bool>(all(vec2<bool>(true, false)), u_input.b.x > u_input.b.x, any(vec3<bool>(true, false, false))), !all(vec4<bool>(false, false, false, false)))));
    var var_0 = !(!vec2<bool>(false, all(vec3<bool>(true, true, false))));
    global1 = arg_0.x;
    var var_1 = select(u_input.b.xx ^ _wgslsmith_clamp_vec2_i32(select(vec2<i32>(-15672i, u_input.b.x), vec2<i32>(0i, u_input.a.x), select(vec2<bool>(true, false), vec2<bool>(true, false), var_0.x)), reverseBits(abs(u_input.a)), firstTrailingBit(firstTrailingBit(vec2<i32>(u_input.b.x, -44702i)))), ~abs(max(vec2<i32>(-1i, u_input.c.x), u_input.a) << (vec2<u32>(4294967295u, 27397u) % vec2<u32>(32u))), select(!(!(!vec2<bool>(true, var_0.x))), select(vec2<bool>(u_input.a.x <= 0i, any(vec4<bool>(var_0.x, false, false, true))), vec2<bool>(true, true), vec2<bool>(var_0.x, true)), !select(select(vec2<bool>(false, false), vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, var_0.x)), select(vec2<bool>(true, false), vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, var_0.x)), !vec2<bool>(var_0.x, var_0.x))));
    var var_2 = Struct_1(u_input.a, 0u, -(-var_1.x << (min(func_2(29860u, 207f, u_input.b, arg_1.b.x).x, countOneBits(arg_0.x)) % 32u)), false);
    return Struct_1(u_input.a, _wgslsmith_mult_u32(~var_2.b, _wgslsmith_mult_u32(~(var_2.b << (var_2.b % 32u)), 4294967295u)), ~(i32(-1i) * -6075i), !(false & var_2.d) && true);
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    global1 = max(~(_wgslsmith_clamp_u32(~54923u, ~18352u, _wgslsmith_clamp_u32(0u, 37429u, 54838u)) & ~78350u), 26348u);
    let var_0 = -_wgslsmith_sub_i32(u_input.b.x, _wgslsmith_div_i32(-1i, -2147483647i));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(-1394f, _wgslsmith_f_op_f32(-arg_0.b.x))), _wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_f_op_f32(-812f * arg_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.b.x, -124f)))));
    global0 = array<vec2<u32>, 1>();
    var var_2 = func_4(vec3<u32>(39203u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(30650u, 4294967295u), global0[_wgslsmith_index_u32(24457u, 1u)]), vec2<u32>(48873u, 0u)), countOneBits(1u)) & ~func_2(_wgslsmith_mod_u32(4294967295u, 33627u), _wgslsmith_f_op_f32(f32(-1f) * -655f), u_input.b, arg_0.a.x), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(var_1.x + arg_0.b.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-746f)), _wgslsmith_f_op_f32(var_1.x - -486f)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(224f, -362f)) * var_1.xx)))), arg_0);
    return func_4(vec3<u32>(~(~reverseBits(var_2.b)), ~_wgslsmith_mod_u32(abs(83738u), 65390u), firstLeadingBit(~0u)), arg_0, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 1>();
    var var_0 = func_1(Struct_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(303f, -1562f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-388f, 306f) + vec2<f32>(654f, -346f)), true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-963f, 109f))))));
    global1 = _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(~_wgslsmith_mod_u32(var_0.b, var_0.b), ~4294967295u, var_0.b, ~_wgslsmith_mult_u32(1u, var_0.b)), ~_wgslsmith_add_vec4_u32(~vec4<u32>(8026u, var_0.b, var_0.b, 0u), reverseBits(vec4<u32>(4294967295u, var_0.b, var_0.b, 52083u))), vec4<u32>(var_0.b, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(0u, var_0.b), var_0.b, _wgslsmith_div_u32(var_0.b, var_0.b)), _wgslsmith_sub_u32(max(var_0.b, 1u), ~69436u), select(var_0.b, firstLeadingBit(28544u), var_0.d))), vec4<u32>(_wgslsmith_mult_u32(~_wgslsmith_add_u32(4294967295u, var_0.b), _wgslsmith_clamp_u32(28500u, firstTrailingBit(var_0.b), 16320u & var_0.b)), min(~(~1u), var_0.b), ~_wgslsmith_mult_u32(var_0.b, 0u), 0u));
    let var_1 = 1u;
    let var_2 = ~abs(vec4<u32>(var_1, var_1, 75734u ^ var_1, select(29686u, var_0.b, true)) | vec4<u32>(~1u, var_0.b | var_0.b, 65653u, 33372u));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2439f)) * -766f))));
    var var_4 = ~var_0.a;
    let var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(126f + -774f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -379f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1040f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1046f * 363f), -743f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -399f), _wgslsmith_f_op_f32(abs(176f)), _wgslsmith_f_op_f32(679f - 1970f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1672f, 845f, -613f), vec3<f32>(-221f, -249f, 1708f))), vec3<bool>(true, var_0.d, true)))), func_2(19351u, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f - -839f), 903f)), reverseBits(vec4<i32>(0i, u_input.a.x, -60410i, func_1(Struct_2(vec2<f32>(-140f, 1435f), vec2<f32>(1921f, 1000f))).a.x)), _wgslsmith_f_op_f32(f32(-1f) * -252f)).x);
}

