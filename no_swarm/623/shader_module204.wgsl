struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<bool>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: f32 = -553f;

var<private> global2: array<vec2<i32>, 23>;

var<private> global3: i32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: bool) -> vec4<bool> {
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -148f);
    return select(!select(!(!vec4<bool>(true, false, true, arg_0)), vec4<bool>(arg_0 || arg_0, any(vec3<bool>(arg_0, arg_0, arg_0)), arg_0, arg_0), !(!vec4<bool>(arg_0, arg_0, arg_0, true))), !select(!(!vec4<bool>(arg_0, true, arg_0, arg_0)), vec4<bool>(select(arg_0, true, true), u_input.d.x <= u_input.b.x, true, all(vec2<bool>(true, true))), _wgslsmith_f_op_f32(round(-496f)) <= -826f), arg_0);
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: vec4<f32>) -> vec3<bool> {
    global2 = array<vec2<i32>, 23>();
    let var_0 = 2163f;
    var var_1 = vec3<bool>(all(vec4<bool>(true & arg_0, all(vec4<bool>(true, false, true, arg_0)) & func_3(arg_0).x, arg_0, !any(arg_1.yw))), !any(func_3(arg_1.x)), all(arg_1.wwz));
    let var_2 = vec4<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2.x)) * 1000f), -867f, arg_2.x);
    let var_3 = Struct_1(reverseBits(vec4<i32>(0i, countOneBits(u_input.c), -u_input.c, 0i)) | _wgslsmith_mod_vec4_i32(abs(vec4<i32>(179i, u_input.c, -33973i, u_input.c) & vec4<i32>(u_input.c, u_input.c, 2147483647i, 15939i)), -(vec4<i32>(u_input.c, 4993i, u_input.c, u_input.c) ^ vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(792f, _wgslsmith_div_f32(var_0, var_2.x)), _wgslsmith_f_op_vec2_f32(exp2(arg_2.ww))))));
    return !func_3(func_3(arg_0).x).zyw;
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: Struct_1, arg_3: Struct_4) -> vec3<bool> {
    var var_0 = Struct_5(Struct_1(arg_2.a, vec2<f32>(arg_2.b.x, 1013f)));
    var var_1 = Struct_5(arg_2);
    var var_2 = select(true, arg_3.b.x, false);
    var var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))))));
    global1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(998f))))));
    return !func_4(any(!(!vec4<bool>(arg_3.b.x, arg_3.b.x, arg_3.b.x, false))), !func_3(any(vec2<bool>(true, arg_3.b.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.a.b.x, 864f, var_0.a.b.x, arg_2.b.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-979f, var_1.a.b.x, -1170f, var_1.a.b.x), vec4<f32>(arg_2.b.x, var_1.a.b.x, -1847f, 391f), true)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(555f, -1000f, -323f, -722f)), vec4<f32>(arg_2.b.x, var_0.a.b.x, 528f, arg_2.b.x))));
}

fn func_1(arg_0: vec2<u32>, arg_1: i32, arg_2: vec4<i32>) -> Struct_4 {
    global3 = 33721i;
    global2 = array<vec2<i32>, 23>();
    global3 = ~(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(arg_2.yx, vec2<i32>(arg_1, -16673i)), -vec2<i32>(arg_2.x, u_input.c) >> (countOneBits(arg_0) % vec2<u32>(32u))) >> (arg_0.x % 32u));
    global3 = _wgslsmith_dot_vec2_i32(global2[_wgslsmith_index_u32(2306u, 23u)], global2[_wgslsmith_index_u32(1u << (~_wgslsmith_mod_u32(29119u, _wgslsmith_div_u32(u_input.b.x, arg_0.x)) % 32u), 23u)]);
    let var_0 = select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(false, select(false, true, false), true)), vec3<bool>(true, true, true), vec3<bool>(true, 1i <= (arg_1 ^ arg_2.x), true)), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), 1i == arg_1), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), func_2(32442u, arg_2.x, Struct_1(arg_2, vec2<f32>(605f, -525f)), Struct_4(vec2<f32>(-686f, 1403f), vec4<bool>(false, true, false, true))), true), vec3<bool>(true, true, true)), ~(i32(-1i) * -2940i) > ~(~arg_2.x));
    return Struct_4(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(199f, -1739f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(489f, 467f))), arg_2.x == 96018i)))))), select(select(!select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(true, var_0.x, false, false)), vec4<bool>(any(vec2<bool>(var_0.x, false)), false, any(vec2<bool>(true, true)), false), 12309u <= select(arg_0.x, arg_0.x, true)), !(!(!vec4<bool>(false, false, var_0.x, true))), !var_0.x));
}

fn func_5(arg_0: Struct_4) -> Struct_5 {
    let var_0 = arg_0.b.x;
    var var_1 = Struct_1(max(~(min(vec4<i32>(2147483647i, u_input.c, u_input.c, u_input.c), vec4<i32>(-2147483647i, -1i, u_input.c, 58485i)) | -vec4<i32>(u_input.c, -45986i, 1i, u_input.c)), ~firstLeadingBit(vec4<i32>(221i, 1i, u_input.c, u_input.c))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, arg_0.a.x) + arg_0.a)), vec2<f32>(1f, _wgslsmith_f_op_f32(step(arg_0.a.x, _wgslsmith_f_op_f32(floor(-1175f)))))));
    let var_2 = max(vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(52351u, 101u, 36825u, u_input.a), select(vec4<u32>(u_input.a, u_input.d.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 1u, 10827u, 15138u), false)), ~(~0u)), ~u_input.b) | ~_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a, 4294967295u), ~u_input.d.yz << ((u_input.b | u_input.d.xy) % vec2<u32>(32u)));
    var var_3 = abs(firstTrailingBit(0u));
    var_3 = u_input.b.x;
    return Struct_5(Struct_1(vec4<i32>(u_input.c, ~countOneBits(39541i), min(select(-41084i, -2147483647i, var_0), var_1.a.x), -reverseBits(u_input.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-func_1(var_2, -47769i, var_1.a).a) - var_1.b)));
}

fn func_6(arg_0: Struct_5, arg_1: vec4<u32>) -> vec2<f32> {
    let var_0 = firstTrailingBit(vec4<i32>(~u_input.c, func_5(func_1(abs(u_input.b), arg_0.a.a.x << (0u % 32u), _wgslsmith_clamp_vec4_i32(arg_0.a.a, arg_0.a.a, vec4<i32>(arg_0.a.a.x, arg_0.a.a.x, 7597i, -2467i)))).a.a.x, -25999i << ((8670u >> (_wgslsmith_div_u32(arg_1.x, arg_1.x) % 32u)) % 32u), select(countOneBits(firstLeadingBit(u_input.c)), -2147483647i, true)));
    global1 = -469f;
    global2 = array<vec2<i32>, 23>();
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(arg_0.a.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.a.b.x, 589f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.b.x, arg_0.a.b.x))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.b.x, -157f) + arg_0.a.b))));
    global3 = _wgslsmith_add_i32(abs(var_0.x), var_0.x << (u_input.d.x % 32u));
    return _wgslsmith_f_op_vec2_f32(-func_1(~arg_1.ww, _wgslsmith_clamp_i32(1i, ~abs(-17587i), ~_wgslsmith_add_i32(2147483647i, -3833i)), vec4<i32>(-2147483647i, -2147483647i, -24049i, var_0.x)).a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<i32>, 23>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_6(func_5(func_1(vec2<u32>(4294967295u, 1u), 0i, vec4<i32>(u_input.c, 1i, 37360i, 8180i))), ~(~vec4<u32>(1u, u_input.a, u_input.b.x, u_input.d.x))))));
    let var_1 = _wgslsmith_add_vec2_i32(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(42534u, u_input.d.x, 21055u, u_input.b.x), ~vec4<u32>(0u, 4294967295u, 0u, 0u)), ~(~vec4<u32>(u_input.b.x, 1u, u_input.b.x, 5348u))), 23u)], _wgslsmith_add_vec2_i32(global2[_wgslsmith_index_u32(u_input.b.x, 23u)], vec2<i32>(~u_input.c, _wgslsmith_dot_vec2_i32(select(global2[_wgslsmith_index_u32(18286u, 23u)], global2[_wgslsmith_index_u32(0u, 23u)], vec2<bool>(true, false)), ~vec2<i32>(-1i, -2147483647i)))));
    let var_2 = Struct_2(u_input.d, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-436f, -633f)), var_0.x)), 1000f), func_5(Struct_4(func_1(~u_input.b, ~var_1.x, _wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, var_1.x, 21464i, var_1.x), vec4<i32>(46470i, 49334i, var_1.x, var_1.x))).a, vec4<bool>(func_2(1u, -53283i, Struct_1(vec4<i32>(-8765i, -4580i, -64301i, -1i), vec2<f32>(var_0.x, var_0.x)), Struct_4(vec2<f32>(-2006f, var_0.x), vec4<bool>(false, false, true, true))).x, true, true, true))).a, Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(-u_input.c, ~(-14102i), -1i, u_input.c), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, 3097i, u_input.c, -87981i), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, var_1.x, var_1.x, var_1.x), vec4<i32>(var_1.x, 0i, 0i, 41907i)))), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x))), Struct_1(select(firstLeadingBit(-vec4<i32>(0i, 28496i, -2147483647i, u_input.c)), vec4<i32>(var_1.x, var_1.x << (674u % 32u), -6151i, 44122i), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_6(Struct_5(Struct_1(vec4<i32>(6396i, u_input.c, 12220i, 1i), vec2<f32>(989f, 1563f))), vec4<u32>(25356u, 4294967295u, u_input.d.x, u_input.d.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -1000f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, ~(~var_2.d.a.x));
}

