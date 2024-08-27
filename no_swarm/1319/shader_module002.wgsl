struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: u32,
    d: vec2<f32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18> = array<f32, 18>(-1336f, -661f, 1000f, -1771f, 2053f, 119f, 277f, 626f, 1114f, -1865f, 170f, 751f, -1150f, -204f, 278f, 1886f, 671f, 619f);

var<private> global1: array<Struct_1, 6>;

var<private> global2: array<vec3<u32>, 9>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: vec3<bool>) -> bool {
    global2 = array<vec3<u32>, 9>();
    var var_0 = false;
    var var_1 = global1[_wgslsmith_index_u32(14281u, 6u)];
    var_0 = arg_2.x;
    var var_2 = u_input.e.xz;
    return _wgslsmith_f_op_f32(abs(var_1.d.x)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.x * 420f) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(68862u, 18u)]))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_1.b.x, -1441f))) + _wgslsmith_f_op_f32(f32(-1f) * -1606f)));
}

fn func_3(arg_0: vec4<bool>) -> bool {
    global2 = array<vec3<u32>, 9>();
    let var_0 = false;
    var var_1 = Struct_1(vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, -15751i), -u_input.b.yy), u_input.c.yy), u_input.c.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(553f, global0[_wgslsmith_index_u32(u_input.e.x, 18u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(30554u, 18u)], 310f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(894f, global0[_wgslsmith_index_u32(u_input.d, 18u)]))))) - vec2<f32>(417f, global0[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(u_input.d, 121798u)), 18u)])), _wgslsmith_clamp_u32(~(~u_input.e.x), min(_wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(4294967295u, 9u)], vec3<u32>(u_input.a, 0u, 0u)), 1u), ~1u), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1040f, 550f)))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(4294967295u, 18u)])), -688f)), _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(reverseBits(u_input.e.x), 18u)])))), u_input.c.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-524f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(12654u, 18u)] * _wgslsmith_f_op_f32(f32(-1f) * -106f)), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(u_input.e.yz, vec2<u32>(4294967295u, 116241u)), 18u)]), global0[_wgslsmith_index_u32(firstTrailingBit(u_input.d), 18u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~var_1.c, 18u)] - _wgslsmith_f_op_f32(ceil(var_1.b.x))))));
    var var_3 = Struct_1(u_input.b.yz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(var_1.b)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1079f, var_1.b.x), var_1.d, false))))))), _wgslsmith_mult_u32(~(~var_1.c << (~46514u % 32u)), 4294967295u), _wgslsmith_f_op_vec2_f32(select(var_1.d, _wgslsmith_f_op_vec2_f32(var_1.d - _wgslsmith_f_op_vec2_f32(max(var_1.b, _wgslsmith_f_op_vec2_f32(trunc(var_1.d))))), false)), -reverseBits(1i >> (var_1.c % 32u)) >> ((min(0u, ~u_input.d) << (max(0u, ~u_input.e.x) % 32u)) % 32u));
    return arg_0.x || false;
}

fn func_4(arg_0: bool, arg_1: vec3<bool>) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(4294967295u & ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, abs(4294967295u), u_input.e.x), ~(~global2[_wgslsmith_index_u32(u_input.d, 9u)])), 18u)];
    var var_1 = 873f;
    var var_2 = firstLeadingBit(~(~_wgslsmith_mult_u32(~u_input.d, _wgslsmith_div_u32(u_input.e.x, u_input.a))));
    var var_3 = Struct_1(u_input.c.xy, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, u_input.d), 18u)] - global0[_wgslsmith_index_u32(82565u, 18u)]), -543f))), 10225u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-249f, -2282f)))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 18u)], global0[_wgslsmith_index_u32(1u, 18u)])))))), _wgslsmith_sub_i32(i32(-1i) * -(~u_input.b.x), u_input.c.x));
    var var_4 = ~(~(~(vec4<u32>(u_input.d, 85717u, 4294967295u, 4294967295u) << (~vec4<u32>(1u, 32768u, u_input.d, 1u) % vec4<u32>(32u)))));
    return var_3.c;
}

fn func_2(arg_0: Struct_1) -> i32 {
    global0 = array<f32, 18>();
    global0 = array<f32, 18>();
    global1 = array<Struct_1, 6>();
    global1 = array<Struct_1, 6>();
    let var_0 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(abs(global2[_wgslsmith_index_u32(func_4(func_3(vec4<bool>(true, false, true, false)), vec3<bool>(true, true, true)), 9u)]), vec3<u32>(u_input.d, 4294967295u, ~_wgslsmith_div_u32(4294967295u, arg_0.c))), countOneBits(u_input.e.x));
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec4<bool>(false, true, true, false)), func_1(u_input.a, vec4<i32>(u_input.b.x, u_input.b.x, 3514i, u_input.b.x), vec3<bool>(false, true, true)), any(vec2<bool>(false, true)))), select(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), false), vec4<bool>(true, all(vec3<bool>(true, false, false)), global0[_wgslsmith_index_u32(20931u, 18u)] < global0[_wgslsmith_index_u32(u_input.e.x, 18u)], true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec2<bool>(true, false)))), true));
    global2 = array<vec3<u32>, 9>();
    var var_1 = ~_wgslsmith_mult_i32(-abs(u_input.c.x | u_input.c.x), 0i);
    var var_2 = Struct_1(-(~vec2<i32>(func_2(Struct_1(u_input.b.xw, vec2<f32>(global0[_wgslsmith_index_u32(16079u, 18u)], global0[_wgslsmith_index_u32(1u, 18u)]), 21165u, vec2<f32>(1000f, global0[_wgslsmith_index_u32(u_input.e.x, 18u)]), 2578i)), select(u_input.b.x, 2304i, false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-427f, global0[_wgslsmith_index_u32(u_input.a, 18u)])))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(1u, 18u)], global0[_wgslsmith_index_u32(4294967295u, 18u)]))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-965f, 193f))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 18u)], 533f) * vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 18u)], -386f)))))), ~u_input.d, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.d, 18u)], -254f) + vec2<f32>(global0[_wgslsmith_index_u32(u_input.e.x, 18u)], global0[_wgslsmith_index_u32(69804u, 18u)])))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(379f, global0[_wgslsmith_index_u32(u_input.d, 18u)]) - vec2<f32>(1000f, global0[_wgslsmith_index_u32(4294967295u, 18u)])) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(36501u, 18u)], -672f)))))), _wgslsmith_sub_i32(u_input.c.x, abs(_wgslsmith_div_i32(select(1i, 2147483647i, false), -38553i))));
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.e.zx << (_wgslsmith_add_vec2_u32(vec2<u32>(1u, var_2.c), _wgslsmith_clamp_vec2_u32(u_input.e.yx >> (vec2<u32>(4294967295u, var_2.c) % vec2<u32>(32u)), vec2<u32>(0u, 0u), abs(u_input.e.yx))) % vec2<u32>(32u)), u_input.e.xz), 6u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.x, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_3.d.x, global0[_wgslsmith_index_u32(var_2.c, 18u)]), _wgslsmith_f_op_vec2_f32(trunc(var_3.d)), false || var_0)) - _wgslsmith_div_vec2_f32(var_2.d, _wgslsmith_f_op_vec2_f32(-var_2.d))))));
}

