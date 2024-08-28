struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec3<u32>;

var<private> global2: f32 = -1351f;

var<private> global3: array<Struct_1, 17>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: i32, arg_3: vec2<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.a), -122f)), 1532f, arg_1.d, arg_0.x))));
    global2 = arg_0.x;
    return global1.x;
}

fn func_2(arg_0: u32, arg_1: vec4<i32>, arg_2: u32) -> i32 {
    var var_0 = vec3<u32>(_wgslsmith_sub_u32(~abs(global1.x | 21371u), ~(~(~42451u))), 1u, 61152u);
    let var_1 = global3[_wgslsmith_index_u32(global1.x, 17u)];
    var var_2 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(abs(vec4<u32>(arg_2, 40248u, arg_0, 0u)) & ~vec4<u32>(50408u, 33507u, global1.x, 22355u), vec4<u32>(func_3(var_1.b, global3[_wgslsmith_index_u32(var_1.c, 17u)], -16387i, vec2<u32>(global1.x, var_1.c)), arg_0, _wgslsmith_mult_u32(var_1.c, 10512u), abs(1u))), ~vec4<u32>(var_0.x, var_1.c, u_input.a, global1.x) >> (vec4<u32>(1u, arg_2 & 1u, ~38325u, ~46727u) % vec4<u32>(32u)));
    global1 = min(vec3<u32>(~1u, u_input.a, var_0.x), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, ~arg_2, ~7275u), min(~vec3<u32>(var_1.c, var_1.c, 0u), ~vec3<u32>(35402u, 4294967295u, arg_2))), abs(~(vec3<u32>(arg_2, var_1.c, var_1.c) >> (vec3<u32>(1u, global1.x, 4294967295u) % vec3<u32>(32u))))));
    global2 = _wgslsmith_f_op_f32(-234f * -519f);
    return _wgslsmith_dot_vec2_i32(abs(arg_1.wx), vec2<i32>(abs(_wgslsmith_clamp_i32(56349i, arg_1.x, reverseBits(var_1.e))), arg_1.x));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = _wgslsmith_add_vec2_i32(~max(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.e, arg_2.e, -52179i), vec3<i32>(-19775i, -1i, arg_2.e)), arg_2.e >> (arg_2.c % 32u)), vec2<i32>(2147483647i, 50914i)), vec2<i32>(arg_2.e, ~func_2(_wgslsmith_dot_vec2_u32(global1.zz, vec2<u32>(u_input.a, 78553u)), countOneBits(vec4<i32>(-1924i, arg_2.e, arg_2.e, arg_1.e)), _wgslsmith_mod_u32(arg_1.c, 0u))));
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1038f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(arg_2.d, -1000f)))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.d))))), _wgslsmith_f_op_f32(floor(arg_1.d)));
    var var_1 = arg_2.a;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, arg_2.a, -444f, arg_1.b.x), vec4<f32>(254f, arg_1.b.x, arg_1.a, 2079f)))))));
    var_0 = vec2<i32>(arg_2.e, 33626i);
    return 1u;
}

fn func_4(arg_0: bool) -> Struct_1 {
    var var_0 = vec4<i32>(2147483647i, _wgslsmith_add_i32(reverseBits(-35885i), -firstTrailingBit(-10041i)), -2147483647i & _wgslsmith_clamp_i32(-24778i, -1i, 5794i), -42001i) << (~abs(reverseBits(vec4<u32>(global1.x, global1.x, 4294967295u, u_input.a))) % vec4<u32>(32u));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1244f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(254f, _wgslsmith_f_op_f32(1524f - -789f)) + _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(2359f, 1047f), 132f)))), vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(404f + 759f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-890f))))))), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, 1u, global1.x), abs(vec4<u32>(36647u, 0u, 51804u, 22123u)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(679f - _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(round(648f)))))), var_0.x | func_2(global1.x, -(vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x) & vec4<i32>(-41709i, var_0.x, var_0.x, var_0.x)), _wgslsmith_div_u32(~34461u, ~u_input.a)));
    var var_2 = select(!vec4<bool>(any(vec4<bool>(false, arg_0, arg_0, arg_0)), false, true, var_0.x < var_0.x), select(!(!vec4<bool>(false, arg_0, true, true)), vec4<bool>(!select(false, false, true), arg_0, !arg_0, arg_0), false), select(!(!(!vec4<bool>(false, arg_0, arg_0, arg_0))), select(select(!vec4<bool>(false, arg_0, arg_0, false), !vec4<bool>(arg_0, arg_0, arg_0, arg_0), !vec4<bool>(false, false, false, arg_0)), !(!vec4<bool>(true, false, arg_0, true)), select(!vec4<bool>(true, true, false, arg_0), select(vec4<bool>(false, false, false, arg_0), vec4<bool>(true, arg_0, false, true), arg_0), true)), arg_0));
    let var_3 = -984f <= var_1.d;
    var var_4 = global3[_wgslsmith_index_u32(var_1.c, 17u)];
    return Struct_1(_wgslsmith_f_op_f32(step(var_4.d, var_4.a)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_4.a, _wgslsmith_f_op_f32(-var_4.b.x), 2073f))), var_4.b), ~var_1.c, _wgslsmith_f_op_f32(var_4.d * var_1.b.x), _wgslsmith_sub_i32(_wgslsmith_sub_i32(i32(-1i) * -20832i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_4.e, 0i, var_1.e), vec3<i32>(-2147483647i, -14752i, var_0.x))) & 1i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_0.x, 2147483647i, var_4.e), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, -1795i, var_0.x, var_0.x), vec4<i32>(var_4.e, 16182i, var_0.x, var_4.e)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-882f * 588f)))));
    let var_0 = global3[_wgslsmith_index_u32(~min(global1.x, ~_wgslsmith_add_u32(6074u, _wgslsmith_add_u32(global1.x, 26754u))), 17u)];
    let var_1 = func_4(!(!(func_1(false, global3[_wgslsmith_index_u32(u_input.a, 17u)], global3[_wgslsmith_index_u32(99117u, 17u)]) >= abs(56552u))));
    global1 = vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(var_0.c, global1.x), 4294967295u, abs(var_1.c)) ^ var_1.c, 1u ^ abs(~(~global1.x)), 0u);
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-2295f - -335f), func_4(true).a, -1486f, var_0.a), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1224f, var_1.a, 780f, -470f))))), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false)))) - vec4<f32>(_wgslsmith_f_op_f32(-var_0.a), 1094f, var_0.b.x, _wgslsmith_f_op_f32(min(1494f, var_1.b.x))))));
    var var_3 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~global1.x, 1u, var_1.c | var_0.c), vec3<u32>(var_1.c, ~0u, ~57740u)), 17u)];
    let var_4 = _wgslsmith_add_u32(~(select(_wgslsmith_mult_u32(var_3.c, var_0.c), _wgslsmith_mod_u32(4294967295u, 56749u), false) | ~global1.x), _wgslsmith_sub_u32(firstTrailingBit(reverseBits(~1701u)), firstTrailingBit(~var_3.c)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits((vec3<i32>(var_0.e, -18921i, -2147483647i) >> ((vec3<u32>(0u, u_input.a, 1u) >> (vec3<u32>(global1.x, var_3.c, 0u) % vec3<u32>(32u))) % vec3<u32>(32u))) | vec3<i32>(-50164i, 1i, -1i)));
}

