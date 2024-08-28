struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27> = array<bool, 27>(false, true, false, true, false, true, true, true, false, false, true, true, false, false, true, false, true, false, true, true, false, false, false, true, true, false, false);

var<private> global1: array<Struct_2, 8>;

var<private> global2: Struct_1;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: u32) -> Struct_2 {
    var var_0 = !select(true, u_input.a.x < (i32(-1i) * -57991i), false);
    global1 = array<Struct_2, 8>();
    var_0 = true;
    global0 = array<bool, 27>();
    let var_1 = arg_1.b.x;
    return arg_1;
}

fn func_3(arg_0: f32) -> u32 {
    global2 = Struct_1(global2.a, abs(select(_wgslsmith_clamp_vec3_i32(global2.b, global2.b, global2.b), global2.b | global2.b, vec3<bool>(global0[_wgslsmith_index_u32(6232u, 27u)], false, false)) | ~global2.b), 1205f);
    let var_0 = global2.a.x;
    var var_1 = false;
    global2 = Struct_1(reverseBits(vec4<u32>(_wgslsmith_clamp_u32(46507u, 19123u, 1u), global2.a.x, 69900u, 23324u) << (firstTrailingBit(~vec4<u32>(77981u, global2.a.x, global2.a.x, global2.a.x)) % vec4<u32>(32u))), global2.b, 583f);
    var var_2 = vec3<f32>(arg_0, _wgslsmith_f_op_f32(abs(arg_0)), global2.c);
    return _wgslsmith_div_u32(11183u, _wgslsmith_dot_vec2_u32(firstLeadingBit(func_1(-global2.b.x, func_1(global2.b.x, Struct_2(vec4<u32>(global2.a.x, global2.a.x, global2.a.x, global2.a.x), vec3<bool>(true, global0[_wgslsmith_index_u32(78171u, 27u)], true)), vec2<f32>(1081f, global2.c), global2.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(947f, arg_0)), _wgslsmith_mult_u32(global2.a.x, 0u)).a.xx), global2.a.yx));
}

fn func_2(arg_0: i32) -> vec2<f32> {
    global0 = array<bool, 27>();
    global0 = array<bool, 27>();
    global2 = Struct_1(~global2.a, global2.b, _wgslsmith_f_op_f32(1601f - 311f));
    global0 = array<bool, 27>();
    var var_0 = Struct_3(global1[_wgslsmith_index_u32(global2.a.x ^ (global2.a.x | func_3(_wgslsmith_f_op_f32(-global2.c))), 8u)], u_input.a.x);
    return _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(2068f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global2.c, global2.c)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c, global2.c)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global2.c, 390f), vec2<f32>(404f, -205f)))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1426f, global2.c)), vec2<f32>(global2.c, global2.c)))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>) -> Struct_1 {
    global2 = Struct_1(vec4<u32>(~_wgslsmith_add_u32(~4294967295u, global2.a.x), func_1(~(i32(-1i) * -5595i), Struct_2(vec4<u32>(arg_0.a.x, 22249u, arg_0.a.x, arg_0.a.x) >> (global2.a % vec4<u32>(32u)), vec3<bool>(global0[_wgslsmith_index_u32(9935u, 27u)], false, arg_0.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(arg_1.xx))), _wgslsmith_add_u32(countOneBits(global2.a.x), _wgslsmith_add_u32(4277u, 30438u))).a.x, 29454u, select(0u, ~arg_0.a.x, true)), firstLeadingBit(global2.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1291f, global2.c)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -580f), _wgslsmith_f_op_f32(-arg_1.x))) - global2.c));
    global0 = array<bool, 27>();
    var var_0 = -vec3<i32>(_wgslsmith_sub_i32(global2.b.x, firstTrailingBit(0i | u_input.a.x)), firstLeadingBit(-global2.b.x), abs(u_input.a.x));
    var_0 = _wgslsmith_mod_vec3_i32(-(_wgslsmith_sub_vec3_i32(-global2.b, global2.b) << (vec3<u32>(19002u, ~1u, global2.a.x) % vec3<u32>(32u))), countOneBits(vec3<i32>(~(-2147483647i), 14940i, 1i) << (vec3<u32>(0u, 4294967295u, arg_0.a.x) % vec3<u32>(32u))));
    var_0 = _wgslsmith_clamp_vec3_i32(reverseBits(abs(~global2.b) >> (vec3<u32>(min(arg_0.a.x, 53145u), arg_0.a.x, ~arg_0.a.x) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, global2.b.x), 1i, -global2.b.x), max(~(~global2.b) << (_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(global2.a.www, global2.a.ywz), firstTrailingBit(vec3<u32>(38318u, global2.a.x, 4294967295u))) % vec3<u32>(32u)), vec3<i32>(-u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-36213i, global2.b.x, 2147483647i, -2147483647i), vec4<i32>(38789i, u_input.a.x, -2147483647i, 0i)), var_0.x) >> (~vec3<u32>(142532u, 4294967295u, global2.a.x) % vec3<u32>(32u))));
    return Struct_1(~abs(~(~global2.a)), global2.b, global2.c);
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> vec3<i32> {
    let var_0 = Struct_3(global1[_wgslsmith_index_u32(func_4(func_1(-9800i, global1[_wgslsmith_index_u32(reverseBits(1u), 8u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global2.c, 374f))) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(151f, arg_0.c)))), _wgslsmith_add_u32(~0u, reverseBits(arg_0.a.x))), vec3<f32>(_wgslsmith_f_op_f32(max(global2.c, _wgslsmith_f_op_f32(ceil(arg_2.c)))), -1000f, arg_0.c)).a.x, 8u)], 7038i);
    global2 = func_4(Struct_2(~vec4<u32>(arg_2.a.x, firstLeadingBit(19520u), ~arg_2.a.x, 1u & global2.a.x), select(select(vec3<bool>(true, true, true), select(vec3<bool>(var_0.a.b.x, global0[_wgslsmith_index_u32(21823u, 27u)], false), var_0.a.b, var_0.a.b), vec3<bool>(false, false, false)), !vec3<bool>(var_0.a.b.x, true, global0[_wgslsmith_index_u32(global2.a.x, 27u)]), u_input.a.x <= 33995i)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.c, arg_0.c, -527f), vec3<f32>(arg_2.c, -1000f, global2.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c, arg_0.c, -1287f) * vec3<f32>(1443f, 2181f, global2.c)))))))));
    global0 = array<bool, 27>();
    let var_1 = Struct_1(~(~arg_0.a), arg_0.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global2.c, -1298f))))));
    let var_2 = firstLeadingBit(~(var_1.a.x >> (_wgslsmith_mult_u32(global2.a.x >> (var_1.a.x % 32u), var_0.a.a.x) % 32u)));
    return global2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global2.b.x | reverseBits(-global2.b.x), global1[_wgslsmith_index_u32(71573u, 8u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-162f, 189f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1310f, 1113f)))) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1269f, -1644f))))), ~1u);
    global2 = Struct_1(vec4<u32>(~_wgslsmith_mult_u32(~var_0.a.x, ~4294967295u), 69092u, 1731u >> (_wgslsmith_clamp_u32(global2.a.x, ~global2.a.x, _wgslsmith_div_u32(4294967295u, 1u)) % 32u), select(~1322u, 69890u, false)), func_5(func_4(func_1(u_input.a.x, Struct_2(vec4<u32>(59294u, var_0.a.x, 4294967295u, 1u), var_0.b), _wgslsmith_f_op_vec2_f32(func_2(u_input.a.x)), 40695u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c, global2.c, 114f)) - vec3<f32>(885f, global2.c, global2.c))), _wgslsmith_add_i32(max(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a.x, -23158i, 2147483647i), vec4<i32>(u_input.a.x, 1i, 49235i, -39737i))), -u_input.a.x), func_4(Struct_2(~vec4<u32>(var_0.a.x, var_0.a.x, global2.a.x, global2.a.x), select(vec3<bool>(var_0.b.x, var_0.b.x, global0[_wgslsmith_index_u32(var_0.a.x, 27u)]), var_0.b, var_0.b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c, global2.c, 109f) * vec3<f32>(-441f, 118f, global2.c)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(285f, -281f, global2.c))))), global2.c);
    global2 = Struct_1(~var_0.a, vec3<i32>(-1i, ~abs(_wgslsmith_mult_i32(u_input.a.x, 0i)), func_4(global1[_wgslsmith_index_u32(4294967295u, 8u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2.c, -973f, global2.c), vec3<f32>(global2.c, 383f, global2.c))))).b.x), _wgslsmith_f_op_f32(1000f - global2.c));
    let var_1 = _wgslsmith_div_u32(1u, _wgslsmith_add_u32(_wgslsmith_add_u32(global2.a.x | 1u, ~global2.a.x), 54264u));
    let var_2 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -2147483647i, func_1(var_2, var_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2.c, -701f)))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-658f, global2.c) + vec2<f32>(390f, global2.c))))), ~27043u).a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-611f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2.c, -1033f)) + _wgslsmith_f_op_f32(exp2(global2.c))))));
}

