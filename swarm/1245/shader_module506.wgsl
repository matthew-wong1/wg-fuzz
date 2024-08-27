struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 18>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: vec3<u32>) -> f32 {
    global0 = array<vec4<u32>, 18>();
    global0 = array<vec4<u32>, 18>();
    global0 = array<vec4<u32>, 18>();
    global0 = array<vec4<u32>, 18>();
    global0 = array<vec4<u32>, 18>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -804f)), _wgslsmith_f_op_f32(-160f + -439f)) - 1739f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-502f, _wgslsmith_f_op_f32(max(-691f, -1000f))))))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> vec2<f32> {
    var var_0 = arg_3;
    var var_1 = _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(global0[_wgslsmith_index_u32(min(5212u, arg_3.a) | ~2099u, 18u)], min(u_input.d, max(u_input.d, u_input.d)), ~u_input.d), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(u_input.d.wxx >> (vec3<u32>(34777u, 3433u, 87439u) % vec3<u32>(32u))), u_input.d.zyy), 18u)]) >> (_wgslsmith_add_vec4_u32(~(~firstLeadingBit(global0[_wgslsmith_index_u32(0u, 18u)])), vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, 1u, var_0.a), select(u_input.d.yyy, u_input.d.xzw, arg_0.c.x)), 7714u, _wgslsmith_dot_vec4_u32(countOneBits(global0[_wgslsmith_index_u32(4294967295u, 18u)]), global0[_wgslsmith_index_u32(arg_2, 18u)]))) % vec4<u32>(32u));
    var var_2 = select(select(!(!vec2<bool>(false, arg_3.c.x)), select(select(arg_1.c.xy, arg_3.c.yz, true), var_0.c.yy, select(!var_0.c.yy, vec2<bool>(false, true), !arg_1.c.yx)), select(arg_1.c.zx, !select(var_0.c.xx, vec2<bool>(true, arg_3.c.x), true), !vec2<bool>(true, arg_0.c.x))), select(!var_0.c.yy, vec2<bool>(true, true), !select(arg_3.c.zy, arg_0.c.yz, all(arg_3.c.yx))), !vec2<bool>(true, any(vec3<bool>(var_0.c.x, arg_1.c.x, arg_0.c.x))));
    var_2 = !(!vec2<bool>(all(!vec2<bool>(arg_1.c.x, true)), any(!var_0.c)));
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(571f, 1445f, -1338f, 963f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-644f * 1005f), _wgslsmith_f_op_f32(round(-456f)), 852f, _wgslsmith_f_op_f32(func_1(arg_2, u_input.a, var_1.zyz))) * vec4<f32>(_wgslsmith_f_op_f32(-126f + -935f), -1626f, _wgslsmith_f_op_f32(ceil(1187f)), _wgslsmith_f_op_f32(abs(463f)))), arg_0.c.x || !(!var_2.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(155f, 707f, 506f, 949f)), vec4<f32>(-1306f, 1868f, 2701f, -750f), arg_3.c.x)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1586f, -1492f, -285f, -948f)))))) - vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(246f, 632f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-261f - 209f), -634f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1812f))), 1215f)));
    return vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(128f)), _wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(-var_3.x));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: vec2<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(min(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1426f) * _wgslsmith_f_op_f32(f32(-1f) * -1219f))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, -729f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-2276f, arg_2) * _wgslsmith_f_op_vec2_f32(func_3(arg_0, Struct_1(reverseBits(5138u), ~(-1i), vec3<bool>(arg_0.c.x, true, arg_0.c.x)), ~_wgslsmith_mod_u32(u_input.b, 4294967295u), arg_0))));
    var var_2 = vec4<bool>(all(arg_0.c), arg_0.c.x, false, !(u_input.b <= min(arg_0.a, arg_0.a)));
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(arg_2, 1250f))));
    let var_4 = arg_0;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(806f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) - _wgslsmith_div_f32(-1127f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x))))), any(select(arg_0.c.yy, vec2<bool>(var_4.c.x, var_2.x), select(vec2<bool>(false, var_4.c.x), var_4.c.zy, any(vec4<bool>(true, false, true, var_4.c.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(59431u, u_input.a.x, vec3<bool>(true, true, false)), _wgslsmith_f_op_f32(max(-418f, -1000f)), _wgslsmith_f_op_f32(func_1(~u_input.b, u_input.a ^ _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, u_input.e.x, -1i, 28208i), u_input.a), u_input.d.yzw)), vec2<i32>(-(~u_input.c.x), -abs(3746i)))), -376f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -334f)));
    let var_1 = 1u;
    var var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-5385i << (var_1 % 32u), ~2147483647i), vec2<i32>(u_input.e.x, 6756i) >> (vec2<u32>(28271u, u_input.d.x) % vec2<u32>(32u))) & max(vec2<i32>(-46752i, 2147483647i), u_input.c), abs(countOneBits(-u_input.a.xy)));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(289f, 1278f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1492f))), _wgslsmith_f_op_f32(func_2(Struct_1(0u, u_input.e.x, vec3<bool>(false, false, true)), -600f, _wgslsmith_f_op_f32(-var_0.x), vec2<i32>(2463i, 10797i) ^ u_input.c))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(-var_0.x)) - 1197f)), _wgslsmith_f_op_f32(-var_0.x));
    var var_3 = Struct_1(~(reverseBits(_wgslsmith_div_u32(u_input.b, 0u)) >> (var_1 % 32u)), u_input.c.x, vec3<bool>(any(vec2<bool>(true, true)), u_input.b >= 0u, u_input.d.x >= reverseBits(u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(1i, -u_input.a.x) | countOneBits(~(-1i) | (var_3.b ^ u_input.c.x)), vec4<u32>(~(~abs(0u)), _wgslsmith_add_u32(~var_3.a ^ min(16637u, u_input.d.x), _wgslsmith_sub_u32(var_3.a, ~27440u)), _wgslsmith_mult_u32(u_input.b, u_input.b), countOneBits(1u)), var_3.b, var_3.b, 64689i & firstLeadingBit(u_input.c.x));
}

