struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec3<i32>,
    d: f32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: u32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 26>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4) -> i32 {
    let var_0 = i32(-1i) * -26379i;
    let var_1 = ~u_input.a.xw;
    global0 = array<vec3<bool>, 26>();
    global0 = array<vec3<bool>, 26>();
    global0 = array<vec3<bool>, 26>();
    return countOneBits(-u_input.c.x);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<bool>) -> Struct_3 {
    let var_0 = -165f;
    global0 = array<vec3<bool>, 26>();
    var var_1 = min(vec4<i32>(~(u_input.c.x & 11719i), firstLeadingBit(u_input.c.x), max(u_input.c.x, func_3(Struct_4(vec4<u32>(0u, u_input.e, u_input.e, 47027u), 0u, arg_0.ww))), u_input.c.x >> (firstTrailingBit(~u_input.b) % 32u)), _wgslsmith_mod_vec4_i32(firstTrailingBit(~(-vec4<i32>(u_input.c.x, 53607i, -1i, u_input.c.x))), ~(firstLeadingBit(vec4<i32>(-2147483647i, 0i, u_input.c.x, u_input.c.x)) & -vec4<i32>(u_input.c.x, u_input.c.x, 1i, u_input.c.x))));
    let var_2 = Struct_1(!(!(!global0[_wgslsmith_index_u32(u_input.d, 26u)])), var_1.x, abs(firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.x, u_input.c.x, u_input.c.x), vec3<i32>(var_1.x, u_input.c.x, var_1.x)))), -1147f, u_input.c.zx);
    let var_3 = vec3<u32>(select(~_wgslsmith_mod_u32(u_input.e, 43672u), ~max(4294967295u, 1u), !arg_1.x), 38880u, 58338u) | _wgslsmith_mod_vec3_u32(u_input.a.wxz, u_input.a.xzx);
    return Struct_3(Struct_2(var_2), var_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -599f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, arg_0.x)))))), var_2, vec4<bool>(var_3.x == 4294967295u, true, !arg_1.x, arg_1.x));
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> Struct_4 {
    global0 = array<vec3<bool>, 26>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -453f))));
    global0 = array<vec3<bool>, 26>();
    let var_1 = Struct_4(vec4<u32>(arg_1, u_input.e >> (4294967295u % 32u), u_input.d, ~u_input.a.x), _wgslsmith_mod_u32(66626u, countOneBits(max(u_input.d, 1u))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_0.a.a.d)), arg_0.b.d))))));
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(vec4<f32>(1000f, 428f, var_0, var_0), arg_0.a.a.a).c + _wgslsmith_f_op_f32(round(139f)))))));
    return Struct_4(var_1.a >> ((~(u_input.a & var_1.a) << (var_1.a % vec4<u32>(32u))) % vec4<u32>(32u)), u_input.d, var_1.c);
}

fn func_1(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = Struct_4(abs(u_input.a), u_input.e, vec2<f32>(_wgslsmith_f_op_f32(723f + -492f), _wgslsmith_f_op_f32(-489f - arg_0.d)));
    global0 = array<vec3<bool>, 26>();
    var_0 = func_4(func_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) * -382f), _wgslsmith_f_op_f32(arg_0.d + 423f), var_0.c.x, -1479f), vec3<bool>(arg_0.a.x, true, true)), 0u);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, -544f, 1126f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, -1000f, -488f)))))) + vec3<f32>(func_4(func_2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(236f, 731f, arg_0.d, 922f), vec4<f32>(2192f, arg_0.d, arg_0.d, var_0.c.x))), select(vec3<bool>(false, arg_0.a.x, arg_0.a.x), vec3<bool>(arg_0.a.x, false, arg_0.a.x), vec3<bool>(false, true, true))), 1u).c.x, _wgslsmith_f_op_f32(f32(-1f) * -672f), arg_0.d));
    let var_2 = ~(~_wgslsmith_clamp_u32(~(5497u & var_0.a.x), _wgslsmith_sub_u32(select(u_input.e, u_input.d, true), 1u), _wgslsmith_dot_vec3_u32(u_input.a.zyz >> (var_0.a.yyy % vec3<u32>(32u)), vec3<u32>(u_input.d, u_input.d, u_input.b))));
    return ~_wgslsmith_mult_vec4_u32(u_input.a, var_0.a ^ ~vec4<u32>(u_input.b, 1u, var_0.a.x, var_0.b)) << (vec4<u32>(var_2, var_0.b, 16954u, ~(~var_0.b)) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(vec3<u32>(0u, ~4294967295u, ~(~(~u_input.a.x))));
    let var_1 = true;
    global0 = array<vec3<bool>, 26>();
    global0 = array<vec3<bool>, 26>();
    var var_2 = vec4<u32>(24713u, 4294967295u, ~32872u, _wgslsmith_dot_vec4_u32(func_1(Struct_1(vec3<bool>(var_1, true, true), 2147483647i, u_input.c, -456f, u_input.c.zy)), ~(~u_input.a))) ^ u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(782f * 1000f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -239f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -631f)), u_input.c.xy, 1u);
}

