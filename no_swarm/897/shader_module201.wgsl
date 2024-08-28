struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: i32,
    d: vec4<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<i32>, 27>;

var<private> global2: Struct_1 = Struct_1(28982i, 302f);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> i32 {
    global2 = Struct_1(2147483647i, global0.b);
    let var_0 = _wgslsmith_div_vec3_i32(firstLeadingBit(min(vec3<i32>(1i, -23473i, global0.a), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.e, 17748i, 1i), vec3<i32>(0i, global2.a, global0.a))) ^ firstLeadingBit(abs(vec3<i32>(global2.a, 2147483647i, global2.a)))), countOneBits(vec3<i32>(0i, (global2.a << (0u % 32u)) >> (0u % 32u), _wgslsmith_add_i32(~u_input.e, global0.a))));
    let var_1 = global0.b;
    global0 = Struct_1(1i, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.b, _wgslsmith_f_op_f32(sign(global0.b))) + _wgslsmith_f_op_f32(-global0.b)));
    global0 = Struct_1(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(var_0, _wgslsmith_sub_vec3_i32(firstLeadingBit(var_0), -vec3<i32>(var_0.x, 0i, -1i))), -(~(-20983i))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(global2.b)), _wgslsmith_f_op_f32(round(global2.b)))));
    return min(max(~1i, min(u_input.e, ~global2.a)) >> (1u % 32u), var_0.x);
}

fn func_2(arg_0: f32) -> vec4<i32> {
    let var_0 = vec2<bool>((global0.a >= ~1i) & (select(true, any(vec3<bool>(true, true, true)), false) == !any(vec4<bool>(true, true, false, true))), false);
    global0 = Struct_1(global0.a, _wgslsmith_f_op_f32(arg_0 + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(479f)))), 1015f)));
    let var_1 = true;
    global2 = Struct_1(55296i, -417f);
    var var_2 = vec3<i32>(firstLeadingBit(global0.a), global0.a, func_3());
    return _wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.x, global2.a << (~u_input.d.x % 32u), firstTrailingBit(-2147483647i), 1i) | select(_wgslsmith_sub_vec4_i32(vec4<i32>(var_2.x, var_2.x, 1i, -2147483647i) | vec4<i32>(-1i, global2.a, u_input.e, 33078i), vec4<i32>(45903i, -2147483647i, u_input.e, var_2.x) & vec4<i32>(u_input.e, global0.a, global2.a, -1i)), ~vec4<i32>(u_input.e, global0.a, 24424i, -1i), true), ~(select(vec4<i32>(-28004i, global0.a, 44167i, 1i), vec4<i32>(u_input.e, 17038i, global2.a, -4601i), vec4<bool>(true, var_0.x, var_1, var_1)) & (vec4<i32>(0i, -36308i, global2.a, 1i) >> (vec4<u32>(u_input.d.x, u_input.b, 1u, u_input.b) % vec4<u32>(32u)))) | max(vec4<i32>(1i, global2.a, 1i, 2147483647i) & vec4<i32>(2531i, -5776i, global2.a, u_input.e), _wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(-13366i, global0.a, 0i, 1i)), ~vec4<i32>(0i, -27089i, 2147483647i, -9682i))), vec4<i32>(-33222i, global0.a, -_wgslsmith_mod_i32(global0.a, -var_2.x), 29437i));
}

fn func_4(arg_0: u32, arg_1: vec4<i32>, arg_2: vec3<i32>, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_mult_i32(14704i, u_input.e), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(arg_3)) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, -1000f, 1203f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b, global0.b, global0.b)), true)))), Struct_1(~arg_1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1005f + arg_3.x)))))));
    var var_1 = _wgslsmith_mod_vec2_u32(~(~u_input.d.yx), abs(u_input.d.wz));
    var_1 = _wgslsmith_mod_vec2_u32(vec2<u32>(~abs(u_input.c) & 20016u, firstTrailingBit(_wgslsmith_dot_vec4_u32(~u_input.d, ~u_input.d))), firstLeadingBit(vec2<u32>(1u, arg_0)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(-609f, arg_3.x, arg_3.x, 733f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-761f, -873f, global2.b, arg_3.x), vec4<f32>(global0.b, arg_3.x, var_0.b.x, 656f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_3.x, -1111f, var_0.b.x) - vec4<f32>(var_0.c.b, var_0.c.b, var_0.c.b, 407f))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(443f - 2149f), arg_3.x, var_0.c.b, _wgslsmith_f_op_f32(var_0.c.b * var_0.c.b)))));
    global1 = array<vec2<i32>, 27>();
    return Struct_1(arg_1.x, 169f);
}

fn func_1(arg_0: vec2<i32>) -> Struct_4 {
    global2 = func_4(~(~(countOneBits(u_input.b) >> (~u_input.d.x % 32u))), ~func_2(622f), vec3<i32>(_wgslsmith_mod_i32(global2.a, abs(u_input.e ^ 43436i)), max(_wgslsmith_div_i32(global2.a, ~1i), _wgslsmith_div_i32(_wgslsmith_sub_i32(-1i, global2.a), ~(-2147483647i))), _wgslsmith_clamp_i32(0i, ~(~26544i), ~(~u_input.e))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global0.b, -1926f) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.b, global2.b, global0.b), vec3<f32>(global2.b, 102f, 754f), true))), vec3<f32>(_wgslsmith_f_op_f32(global0.b * global2.b), _wgslsmith_f_op_f32(min(global2.b, global0.b)), global0.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(870f, global2.b, global0.b)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1454f, global2.b, 121f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1132f, global2.b, -1262f) + vec3<f32>(1214f, global0.b, global2.b)))), true)));
    let var_0 = Struct_2(-10936i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b, 190f, global2.b) * vec3<f32>(333f, -140f, -465f)))))), Struct_1(-select(-1550i, global0.a, all(vec4<bool>(false, false, false, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-284f + _wgslsmith_f_op_f32(floor(global2.b))))));
    var var_1 = max(-(1i | global2.a), -var_0.c.a);
    var var_2 = var_0;
    let var_3 = Struct_2(u_input.e, vec3<f32>(_wgslsmith_f_op_f32(step(var_2.b.x, 522f)), -2441f, var_0.c.b), Struct_1(arg_0.x, 183f));
    return Struct_4(vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_div_i32(global2.a, global2.a), _wgslsmith_clamp_i32(var_2.a, 0i, var_2.c.a), -8868i), Struct_2(max(0i, -2147483647i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(552f, var_0.c.b, var_0.b.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-536f, -2293f, 951f)))), func_4(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, 4294967295u, u_input.d.x), vec3<u32>(u_input.c, 0u, 21284u), vec3<u32>(u_input.c, u_input.c, 1u)), countOneBits(u_input.d.wzx)), _wgslsmith_div_vec4_i32(~vec4<i32>(-42770i, -1841i, u_input.e, var_3.a), vec4<i32>(var_0.c.a, -63694i, 2147483647i, var_0.c.a) << (u_input.d % vec4<u32>(32u))), select(vec3<i32>(global0.a, arg_0.x, var_0.c.a), select(vec3<i32>(13662i, -3100i, 25837i), vec3<i32>(u_input.e, -2147483647i, var_0.c.a), vec3<bool>(true, true, true)), true), _wgslsmith_div_vec3_f32(vec3<f32>(var_3.c.b, 1407f, global2.b), vec3<f32>(-848f, 705f, var_3.b.x)))), Struct_3(_wgslsmith_mod_i32(max(~global2.a, var_3.c.a), -arg_0.x), !any(vec3<bool>(true, false, true)), global2.a << (_wgslsmith_dot_vec2_u32(vec2<u32>(8570u, 4294967295u), ~vec2<u32>(0u, u_input.b)) % 32u), reverseBits(select(vec4<u32>(88921u, 0u, 8458u, 27701u), vec4<u32>(329u, 1u, 2154u, 18657u), true) | ~u_input.d)));
}

fn func_5(arg_0: bool, arg_1: f32, arg_2: vec4<f32>, arg_3: Struct_4) -> i32 {
    var var_0 = -2147483647i == -abs(_wgslsmith_div_i32(1i, -global0.a));
    global0 = arg_3.b.c;
    var var_1 = all(select(select(vec3<bool>(true, arg_3.c.b, false), vec3<bool>(false, arg_0, all(vec4<bool>(false, true, arg_0, arg_0))), true), vec3<bool>(true, true == arg_0, arg_3.c.b), !select(arg_3.b.b.x >= -1000f, 4294967295u < arg_3.c.d.x, true)));
    global2 = func_4(u_input.c, _wgslsmith_clamp_vec4_i32((vec4<i32>(arg_3.b.a, 0i, u_input.e, global2.a) >> (~vec4<u32>(1u, u_input.b, arg_3.c.d.x, 4294967295u) % vec4<u32>(32u))) | -vec4<i32>(2147483647i, global2.a, -48963i, 2147483647i), countOneBits(~_wgslsmith_div_vec4_i32(vec4<i32>(global2.a, arg_3.a.x, global0.a, u_input.e), vec4<i32>(1885i, global0.a, u_input.e, arg_3.c.a))), _wgslsmith_add_vec4_i32(abs(vec4<i32>(global0.a, arg_3.c.c, 2147483647i, -7940i)), vec4<i32>(_wgslsmith_add_i32(global0.a, 1i), global0.a, -39636i, i32(-1i) * -40508i))), countOneBits(arg_3.a), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_3.b.c.b, 537f, 577f))))))));
    let var_2 = true;
    return global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 27>();
    global2 = Struct_1(_wgslsmith_add_i32(func_5(!(u_input.e != -16739i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b - 113f) - -627f), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1703f), _wgslsmith_f_op_f32(global0.b + global2.b), _wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(global2.b - global2.b)), func_1(reverseBits(vec2<i32>(-1i, u_input.e)))), global2.a), _wgslsmith_f_op_f32(global2.b * global2.b));
    global0 = func_1(abs(_wgslsmith_sub_vec2_i32(select(vec2<i32>(global2.a, -2147483647i), -global1[_wgslsmith_index_u32(u_input.c, 27u)], true), abs(~global1[_wgslsmith_index_u32(15138u, 27u)])))).b.c;
    global0 = func_1(~(-global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, u_input.a), 27u)] | -vec2<i32>(2147483647i, -44295i))).b.c;
    var var_0 = func_1(vec2<i32>((u_input.e << (u_input.c % 32u)) ^ -global0.a, -2147483647i) | vec2<i32>(u_input.e, _wgslsmith_sub_i32(firstLeadingBit(u_input.e), global2.a))).b;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.b, global0.b)), 662f, global2.b, -1548f), -(abs(vec3<i32>(global0.a, 2147483647i, var_0.c.a)) << (vec3<u32>(11478u, 4294967295u, _wgslsmith_dot_vec3_u32(u_input.d.wxz, u_input.d.yyw)) % vec3<u32>(32u))), -func_4(1892u, vec4<i32>(1i, global0.a, global2.a, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.e, global0.a), vec3<i32>(global2.a, 23180i, var_0.c.a))), vec3<i32>(global2.a, u_input.e, -2147483647i), _wgslsmith_f_op_vec3_f32(-var_0.b)).a);
}

