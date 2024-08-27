struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: f32,
    d: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_2,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9>;

var<private> global1: vec4<f32> = vec4<f32>(1000f, 442f, -150f, -563f);

var<private> global2: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(vec2<u32>(73320u, 0u)), Struct_2(vec2<u32>(32060u, 38275u)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: bool) -> f32 {
    var var_0 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(countOneBits(u_input.b), -(~13690i), _wgslsmith_add_i32(~u_input.b, reverseBits(u_input.a.x))), _wgslsmith_mult_vec3_i32(abs(vec3<i32>(-1i, -2147483647i, u_input.a.x)), vec3<i32>(2147483647i, u_input.b, firstLeadingBit(38768i)))), u_input.b);
    global2 = array<Struct_2, 2>();
    let var_1 = vec2<i32>(-(~(-2147483647i)), countOneBits(u_input.b));
    let var_2 = Struct_1(true);
    let var_3 = ~vec3<u32>(0u, 50753u, u_input.c.x);
    return _wgslsmith_f_op_f32(-1f);
}

fn func_2(arg_0: u32, arg_1: vec2<u32>, arg_2: bool) -> vec2<i32> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(780f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, global1.x))), arg_2)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f + global1.x), _wgslsmith_f_op_f32(ceil(global1.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + global1.x) - global1.x)));
    let var_1 = ~(~firstTrailingBit(~firstTrailingBit(arg_1.x)));
    let var_2 = global1.wy;
    global0 = array<Struct_2, 9>();
    var var_3 = !(!vec3<bool>(arg_2, true, arg_2));
    return vec2<i32>(60600i, ~(-18713i));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: bool) -> Struct_2 {
    var var_0 = Struct_3(-275f, 39342u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(trunc(499f))), global1.x))), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 78088u, 0u, u_input.c.x) >> (vec4<u32>(u_input.e, 13135u, u_input.c.x, u_input.c.x) % vec4<u32>(32u)), vec4<u32>(18142u, 30437u, 67173u, 25137u))));
    var var_1 = vec3<u32>(max(_wgslsmith_clamp_u32(5773u, firstLeadingBit(u_input.e), 50746u), _wgslsmith_mod_u32(reverseBits(~78927u), _wgslsmith_sub_u32(max(var_0.d.x, var_0.d.x), 10365u))), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(0u, var_0.b, 73867u), vec3<u32>(var_0.b >> (u_input.c.x % 32u), 0u, 27549u)), var_0.d.yxw), 10751u);
    global0 = array<Struct_2, 9>();
    global1 = vec4<f32>(var_0.c, 1050f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.a)), -728f), -716f, any(!vec2<bool>(true, arg_2))))), global1.x);
    var var_2 = Struct_2(_wgslsmith_mult_vec2_u32(~select(vec2<u32>(var_0.b, var_0.b), var_0.d.yy, vec2<bool>(true, false)) << (vec2<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, var_1.x, 0u, var_0.d.x), var_0.d)) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(var_0.d.wx | u_input.d, max(u_input.c & vec2<u32>(4294967295u, var_0.b), u_input.d))));
    return Struct_2(vec2<u32>(var_2.a.x, ~var_0.b));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_4) -> i32 {
    global0 = array<Struct_2, 9>();
    var var_0 = arg_2.a;
    var var_1 = arg_1;
    let var_2 = select(u_input.e, var_1.a.x, arg_2.d);
    var_1 = func_4((vec4<i32>(_wgslsmith_div_i32(0i, u_input.a.x), arg_2.e, arg_2.e, -12005i) ^ abs(vec4<i32>(u_input.b, u_input.b, 50186i, -17099i))) >> (arg_2.b.d % vec4<u32>(32u)), vec2<i32>(~_wgslsmith_mod_i32(9011i, abs(1i)), -arg_2.e), false);
    return arg_2.e;
}

fn func_6(arg_0: i32, arg_1: vec3<bool>, arg_2: vec4<bool>, arg_3: vec4<u32>) -> vec3<u32> {
    var var_0 = Struct_3(-2254f, 0u, global1.x, vec4<u32>(~(~(u_input.c.x >> (0u % 32u))), _wgslsmith_mod_u32(_wgslsmith_sub_u32(~u_input.d.x, reverseBits(arg_3.x)), ~(69513u | arg_3.x)), ~arg_3.x | 2312u, 0u));
    var_0 = Struct_3(579f, 26987u, -740f, firstTrailingBit(~min(arg_3, vec4<u32>(u_input.d.x, 1u, 1u, 28753u) ^ vec4<u32>(arg_3.x, 31489u, 0u, u_input.d.x))));
    var var_1 = Struct_4(Struct_1(false), Struct_3(_wgslsmith_f_op_f32(min(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), 45861u, var_0.c, vec4<u32>(~_wgslsmith_sub_u32(var_0.d.x, 38208u), 80498u, 36927u, abs(~950u))), Struct_2(vec2<u32>(var_0.d.x, abs(reverseBits(arg_3.x)))), select(select(u_input.e, firstTrailingBit(0u), false) > min(select(u_input.d.x, 0u, false), ~4294967295u), false, select(false, select(arg_1.x || true, true, all(arg_1.xz)), true)), _wgslsmith_dot_vec3_i32(-select(-vec3<i32>(-6827i, -24058i, u_input.b), -vec3<i32>(u_input.b, 25373i, 0i), !arg_1.x), ~vec3<i32>(abs(arg_0), _wgslsmith_mod_i32(-7394i, -8373i), _wgslsmith_mult_i32(38997i, u_input.b))));
    let var_2 = var_1.b.c;
    global0 = array<Struct_2, 9>();
    return var_1.b.d.yyy | firstLeadingBit(var_1.b.d.yxx);
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_4, arg_3: Struct_4) -> u32 {
    global2 = array<Struct_2, 2>();
    global2 = array<Struct_2, 2>();
    var var_0 = func_6(func_5(func_4(_wgslsmith_clamp_vec4_i32(vec4<i32>(38091i, 0i, arg_3.e, arg_3.e), vec4<i32>(-10384i, arg_2.e, 0i, -2147483647i), vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.b) >> (vec4<u32>(14137u, 2328u, 54992u, arg_3.b.d.x) % vec4<u32>(32u))), abs(func_2(2837u, vec2<u32>(33577u, 44427u), false)), true), func_4(-vec4<i32>(-57648i, u_input.a.x, 30012i, arg_3.e), ~select(vec2<i32>(-7818i, 1i), u_input.a, arg_1.ww), !arg_2.a.a && arg_3.d), arg_2), vec3<bool>(true, false, false), vec4<bool>(false, true & arg_1.x, true, all(!select(vec4<bool>(true, arg_2.a.a, false, false), vec4<bool>(arg_1.x, arg_3.a.a, false, arg_3.d), arg_1))), vec4<u32>(1u, arg_2.b.b, 1u, u_input.c.x));
    let var_1 = 579f;
    var_0 = arg_3.b.d.wxx;
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 9>();
    let var_0 = ~vec4<u32>(_wgslsmith_mult_u32(reverseBits(func_1(667f, vec4<bool>(false, false, false, false), Struct_4(Struct_1(false), Struct_3(-1812f, u_input.d.x, 558f, vec4<u32>(46088u, u_input.d.x, u_input.c.x, u_input.d.x)), Struct_2(vec2<u32>(u_input.c.x, u_input.e)), false, u_input.b), Struct_4(Struct_1(false), Struct_3(global1.x, 0u, global1.x, vec4<u32>(1u, u_input.e, 0u, u_input.e)), global0[_wgslsmith_index_u32(0u, 9u)], false, u_input.b))), ~(~27215u)), u_input.e ^ firstTrailingBit(~u_input.e), abs(max(1u, u_input.e)), ~2784u);
    var var_1 = true;
    var var_2 = Struct_1(true);
    let var_3 = !var_2.a;
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, _wgslsmith_f_op_f32(func_3(global1.x, _wgslsmith_f_op_f32(min(-926f, global1.x)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1020f))), global1.x) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1017f, global1.x, -106f, global1.x) + vec4<f32>(global1.x, global1.x, global1.x, 1000f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-109f, global1.x, 537f, -1075f), vec4<f32>(297f, -157f, 1064f, global1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 736f, global1.x, global1.x)), select(vec4<bool>(var_3, var_3, false, var_2.a), vec4<bool>(true, var_2.a, true, true), true)))))) + vec4<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1176f, -2023f, var_3))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + 538f) - _wgslsmith_f_op_f32(-114f + -1116f)), true)), 434f, _wgslsmith_f_op_f32(-147f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1008f + 266f) + 1379f)), -549f));
    var var_4 = -(~(2147483647i & (firstTrailingBit(4707i) & u_input.a.x)));
    let var_5 = Struct_4(Struct_1(true), Struct_3(global1.x, func_4(select(-vec4<i32>(u_input.b, -34799i, u_input.a.x, 16581i), reverseBits(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), var_2.a | var_2.a), vec2<i32>(u_input.b, reverseBits(27333i)), true).a.x, -1553f, var_0 >> (var_0 % vec4<u32>(32u))), func_4(firstTrailingBit(~(~vec4<i32>(u_input.b, 1i, 34086i, u_input.a.x))), u_input.a, false), 4294967295u != var_0.x, 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a.x);
}

