struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: Struct_2,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<f32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(vec2<i32>(-18192i, 1i), vec3<i32>(34353i, 2147483647i, 29920i), vec4<f32>(-416f, 582f, -365f, -1649f), 0u), 0i);

var<private> global1: array<Struct_2, 7>;

var<private> global2: i32 = i32(-2147483648);

var<private> global3: array<vec3<bool>, 10> = array<vec3<bool>, 10>(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: u32, arg_3: Struct_2) -> vec2<bool> {
    var var_0 = _wgslsmith_sub_u32(global0.a.d & ~abs(arg_2), ~(~(~abs(arg_3.b.d))));
    var_0 = ~52976u ^ u_input.d;
    global2 = arg_1;
    let var_1 = Struct_3(Struct_1(global0.a.a, firstLeadingBit(_wgslsmith_add_vec3_i32(global0.a.b, vec3<i32>(arg_1, arg_1, 2147483647i)) << (~vec3<u32>(arg_2, arg_3.a, 2016u) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(arg_3.b.c)) + vec4<f32>(-1000f, global0.a.c.x, arg_3.b.c.x, global0.a.c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(338f, arg_3.b.c.x, arg_3.b.c.x, -287f) - vec4<f32>(global0.a.c.x, global0.a.c.x, -1191f, 1885f))))), ~countOneBits(select(arg_3.b.d, 0u, false))), u_input.b >> ((~(~arg_3.a) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 17002u, 26336u, 99380u), ~vec4<u32>(arg_3.a, u_input.d, arg_3.a, arg_2)) % 32u)) % 32u));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.a.c.x, _wgslsmith_f_op_f32(trunc(-817f))))))));
    return vec2<bool>(arg_0, false);
}

fn func_2() -> vec2<bool> {
    global1 = array<Struct_2, 7>();
    let var_0 = Struct_4(true, all(vec4<bool>(any(vec4<bool>(true, true, false, true)), _wgslsmith_div_f32(global0.a.c.x, -1000f) <= 1f, all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false))), all(global3[_wgslsmith_index_u32(~3517u, 10u)]))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, _wgslsmith_div_u32(u_input.c.x, 64620u ^ global0.a.d), ~4294967295u), ~vec3<u32>(u_input.c.x, max(u_input.c.x, global0.a.d), 57281u)), 7u)], Struct_3(global0.a, ~_wgslsmith_add_i32(min(17552i, u_input.b), _wgslsmith_add_i32(u_input.a, global0.b))));
    let var_1 = _wgslsmith_f_op_f32(ceil(global0.a.c.x));
    var var_2 = ~global0.a.b.x;
    let var_3 = var_0.c;
    return func_3(var_0.a, firstTrailingBit(-2147483647i), 0u, Struct_2(4294967295u, Struct_1((vec2<i32>(global0.b, -27597i) | vec2<i32>(-1i, global0.b)) << ((vec2<u32>(19775u, var_3.a) ^ u_input.c) % vec2<u32>(32u)), vec3<i32>(20063i, -22413i, var_0.c.b.b.x ^ var_0.d.a.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.d.a.c)), ~firstLeadingBit(var_0.d.a.d)), ~select(vec3<i32>(13155i, 19737i, var_3.b.a.x), max(u_input.e.wyx, var_3.b.b), !global3[_wgslsmith_index_u32(1u, 10u)])));
}

fn func_1(arg_0: bool) -> Struct_2 {
    var var_0 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(global0.a.d, 16423u, 30931u) >> (abs(vec3<u32>(1u, 189u, 398u)) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 33099u, 14994u), vec3<u32>(4294967295u, global0.a.d, 43585u), vec3<u32>(1u, u_input.d, 4294967295u)), ~vec3<u32>(u_input.c.x, 16636u, u_input.c.x))), ~35657u, 65854u << (u_input.d % 32u)) < 71183u;
    var var_1 = Struct_4(arg_0 && any(select(select(vec2<bool>(false, false), vec2<bool>(false, false), arg_0), func_2(), vec2<bool>(arg_0, false))), all(select(!vec4<bool>(true, false, arg_0, false), select(vec4<bool>(false, arg_0, arg_0, true), vec4<bool>(arg_0, arg_0, false, arg_0), arg_0), !vec4<bool>(false, true, arg_0, arg_0))) | (all(!vec2<bool>(arg_0, true)) | arg_0), Struct_2(~1u, Struct_1(abs(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, u_input.a), u_input.e.xx)), -(~vec3<i32>(1i, 2147483647i, global0.a.b.x)), _wgslsmith_f_op_vec4_f32(-global0.a.c), _wgslsmith_mult_u32(countOneBits(global0.a.d), reverseBits(u_input.c.x))), _wgslsmith_sub_vec3_i32(global0.a.b ^ global0.a.b, abs(reverseBits(vec3<i32>(-1i, 23052i, -1i))))), Struct_3(Struct_1(~(-global0.a.a), (vec3<i32>(global0.b, -1i, global0.b) >> (vec3<u32>(1u, 4294967295u, 4294967295u) % vec3<u32>(32u))) & vec3<i32>(global0.b, -17800i, -2147483647i), vec4<f32>(621f, _wgslsmith_div_f32(-384f, global0.a.c.x), global0.a.c.x, global0.a.c.x), 0u), 2147483647i));
    let var_2 = ~((vec4<u32>(global0.a.d & 1u, ~13482u, _wgslsmith_mod_u32(global0.a.d, u_input.d), ~global0.a.d) << (vec4<u32>(_wgslsmith_add_u32(1u, global0.a.d), min(global0.a.d, 4294967295u), ~1u, global0.a.d | u_input.c.x) % vec4<u32>(32u))) << (vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.c, _wgslsmith_sub_vec2_u32(u_input.c, u_input.c)), global0.a.d, min(~4294967295u, 4294967295u), global0.a.d) % vec4<u32>(32u)));
    global2 = 0i;
    let var_3 = Struct_4(true, all(!select(vec4<bool>(true, var_1.a, false, var_1.a), !vec4<bool>(false, true, true, arg_0), !vec4<bool>(false, arg_0, arg_0, true))), Struct_2(4294967295u, Struct_1(select(~global0.a.b.zz, vec2<i32>(u_input.a, -15616i) & vec2<i32>(-1529i, var_1.d.a.a.x), any(vec2<bool>(false, false))), (vec3<i32>(global0.a.b.x, u_input.e.x, -2147483647i) << (vec3<u32>(8155u, var_1.d.a.d, var_1.c.b.d) % vec3<u32>(32u))) | vec3<i32>(u_input.a, var_1.c.c.x, global0.a.b.x), global0.a.c, 12807u), vec3<i32>(reverseBits(-1i) >> ((var_1.c.b.d >> (global0.a.d % 32u)) % 32u), ~(-1i), i32(-1i) * -global0.b)), var_1.d);
    return Struct_2(~(~(~u_input.d)), Struct_1(vec2<i32>(var_3.d.b, 0i), -_wgslsmith_mult_vec3_i32(-global0.a.b, var_1.c.c), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -402f)), var_3.d.a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.d.a.c.x, var_1.c.b.c.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(var_3.d.a.c.x))))), var_2.x), ~(~(-vec3<i32>(var_1.d.b, 78021i, 19648i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global0.a.c.x, -1368f))) * _wgslsmith_f_op_f32(select(410f, global0.a.c.x, true))) < _wgslsmith_f_op_f32(-global0.a.c.x), func_1(true), Struct_3(global0.a, 1i));
    global3 = array<vec3<bool>, 10>();
    let var_1 = ~select(~reverseBits(vec3<u32>(4294967295u, u_input.d, var_0.d.a.d)) | ~(~vec3<u32>(global0.a.d, 38460u, global0.a.d)), abs(vec3<u32>(52301u, u_input.d, ~global0.a.d)), vec3<bool>(!var_0.a, var_0.b, false));
    global1 = array<Struct_2, 7>();
    let var_2 = func_3(var_0.a, var_0.d.a.b.x, abs(27505u), var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, func_1(all(global3[_wgslsmith_index_u32(~(~var_1.x), 10u)])).b.c.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.a.c.x * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(sign(var_0.c.b.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.b.c.x) - var_0.c.b.c.x), 713f)), -countOneBits(vec4<i32>(var_0.d.b, ~(-57161i), reverseBits(global0.b), reverseBits(var_0.c.c.x))), vec4<u32>(~(~(u_input.c.x << (global0.a.d % 32u))), abs(u_input.d & (global0.a.d << (global0.a.d % 32u))), min(global0.a.d, 1u), var_1.x));
}

