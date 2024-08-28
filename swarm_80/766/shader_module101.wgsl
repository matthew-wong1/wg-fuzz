struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 23> = array<vec2<u32>, 23>(vec2<u32>(4182u, 82776u), vec2<u32>(1u, 4294967295u), vec2<u32>(44787u, 1u), vec2<u32>(0u, 1u), vec2<u32>(2823u, 4294967295u), vec2<u32>(26036u, 0u), vec2<u32>(30700u, 21450u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 65219u), vec2<u32>(1u, 10806u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 58768u), vec2<u32>(27263u, 41011u), vec2<u32>(1u, 0u), vec2<u32>(0u, 16089u), vec2<u32>(15188u, 0u), vec2<u32>(0u, 11759u), vec2<u32>(20506u, 0u), vec2<u32>(3035u, 1u), vec2<u32>(46633u, 1u), vec2<u32>(67262u, 2628u), vec2<u32>(7259u, 23543u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2) -> i32 {
    let var_0 = Struct_1(~0u, _wgslsmith_add_u32(~arg_1.a.b, arg_1.a.b), select(arg_1.a.c, arg_1.a.c, arg_1.a.c.x), arg_0.x);
    global0 = array<vec2<u32>, 23>();
    let var_1 = arg_1.a;
    let var_2 = var_1;
    global0 = array<vec2<u32>, 23>();
    return u_input.a.x;
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = vec2<bool>(select(all(vec3<bool>(true, true, true)), select(-u_input.b > func_3(arg_0, Struct_2(Struct_1(29009u, u_input.c, vec4<bool>(false, true, false, true), arg_0.x))), u_input.e.x >= firstTrailingBit(4294967295u), false), max(u_input.b, u_input.a.x >> (1u % 32u)) > _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, u_input.b, u_input.b, -1i), -vec4<i32>(u_input.b, u_input.b, u_input.b, -2156i))), arg_0.x > arg_0.x);
    global0 = array<vec2<u32>, 23>();
    global0 = array<vec2<u32>, 23>();
    let var_1 = -reverseBits(-u_input.b);
    var var_2 = Struct_2(Struct_1(~(~u_input.e.x) >> (_wgslsmith_mod_u32(0u, _wgslsmith_add_u32(54521u, u_input.e.x)) % 32u), min(12368u, 11581u), !vec4<bool>(true, all(vec3<bool>(var_0.x, false, var_0.x)), var_0.x || var_0.x, true), _wgslsmith_f_op_f32(-703f + _wgslsmith_f_op_f32(sign(arg_0.x)))));
    return Struct_1(u_input.d, u_input.d, var_2.a.c, _wgslsmith_f_op_f32(487f * var_2.a.d));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec3<u32> {
    let var_0 = ~(~(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b, u_input.e.x, 44836u, 86461u), vec4<u32>(arg_0.a, 19906u, 4294967295u, 0u)) | u_input.d));
    var var_1 = _wgslsmith_clamp_vec3_i32(vec3<i32>(i32(-1i) * -func_3(vec2<f32>(638f, arg_0.d), Struct_2(Struct_1(74966u, 4294967295u, vec4<bool>(false, arg_1.c.x, arg_0.c.x, arg_0.c.x), arg_1.d))), 1i, _wgslsmith_dot_vec3_i32(reverseBits(firstLeadingBit(vec3<i32>(1i, u_input.a.x, -24785i))), _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(u_input.a, u_input.a), firstTrailingBit(u_input.a)))), _wgslsmith_div_vec3_i32(-u_input.a, min(u_input.a, vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 2147483647i, 1i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_clamp_i32(u_input.b, u_input.b, 2147483647i), 46759i))), ~u_input.a);
    let var_2 = ~11991i;
    global0 = array<vec2<u32>, 23>();
    let var_3 = _wgslsmith_clamp_u32(select(u_input.c, min(firstLeadingBit(16077u), 1u), func_2(vec2<f32>(arg_0.d, 1657f)).c.x) ^ select(arg_0.a, 0u, all(!arg_1.c.wz)), reverseBits(firstLeadingBit(~var_0)), firstLeadingBit(var_0));
    return ~vec3<u32>(firstLeadingBit(0u), arg_1.b, max(~var_0, _wgslsmith_sub_u32(arg_0.a, arg_1.a)) | _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.e, u_input.e), _wgslsmith_div_vec3_u32(u_input.e, u_input.e)));
}

fn func_1() -> Struct_2 {
    let var_0 = true;
    var var_1 = ~min(_wgslsmith_mult_vec3_u32(~u_input.e, u_input.e), u_input.e) << (~(func_4(func_2(vec2<f32>(-190f, 561f)), func_2(vec2<f32>(-133f, 251f))) ^ ~u_input.e) % vec3<u32>(32u));
    global0 = array<vec2<u32>, 23>();
    global0 = array<vec2<u32>, 23>();
    var_1 = select(countOneBits(vec3<u32>(_wgslsmith_sub_u32(var_1.x, u_input.d << (1u % 32u)), u_input.d, _wgslsmith_mod_u32(var_1.x << (var_1.x % 32u), 4294967295u))), u_input.e, select(select(select(!vec3<bool>(var_0, false, true), vec3<bool>(true, true, true), vec3<bool>(var_0, false, false)), !vec3<bool>(var_0, true, var_0), true), !vec3<bool>(func_2(vec2<f32>(-1033f, 150f)).c.x, false, var_0 | var_0), true & func_2(_wgslsmith_div_vec2_f32(vec2<f32>(-250f, -1530f), vec2<f32>(-120f, 909f))).c.x));
    return Struct_2(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1142f, 808f), vec2<f32>(226f, 754f))) + vec2<f32>(-375f, -436f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 64306u;
    var var_1 = vec2<i32>(u_input.a.x, ~17028i);
    var var_2 = func_1();
    global0 = array<vec2<u32>, 23>();
    let var_3 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2.a.d, var_2.a.d))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-958f, -835f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.d, -1000f) - vec2<f32>(2023f, 2849f))))));
    var var_4 = vec2<u32>(_wgslsmith_dot_vec2_u32(max(_wgslsmith_mod_vec2_u32(vec2<u32>(43898u, 5028u), vec2<u32>(4294967295u, 3371u)) << (global0[_wgslsmith_index_u32(21070u, 23u)] % vec2<u32>(32u)), ~vec2<u32>(var_0, 149420u)), global0[_wgslsmith_index_u32(var_2.a.a, 23u)]), _wgslsmith_dot_vec2_u32(vec2<u32>(~_wgslsmith_div_u32(46474u, var_3.a), ~var_3.b), _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(reverseBits(u_input.e.zx), ~u_input.e.zy), ~u_input.e.zx & (vec2<u32>(var_3.b, var_3.a) << (vec2<u32>(var_0, var_0) % vec2<u32>(32u))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<i32>(var_1.x, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(var_1.x, u_input.b, var_1.x)))) << (~vec2<u32>(_wgslsmith_mult_u32(var_4.x, 0u), _wgslsmith_add_u32(var_2.a.a, 50703u)) % vec2<u32>(32u)));
}

