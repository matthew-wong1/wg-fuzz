struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: i32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1() -> Struct_1 {
    let var_0 = u_input.b.x;
    global0 = array<bool, 18>();
    var var_1 = vec4<bool>(global0[_wgslsmith_index_u32(min(~u_input.a, 0u), 18u)], any(vec4<bool>(global0[_wgslsmith_index_u32(93529u, 18u)], (global0[_wgslsmith_index_u32(u_input.a, 18u)] | global0[_wgslsmith_index_u32(62914u, 18u)]) || !global0[_wgslsmith_index_u32(4294967295u, 18u)], !global0[_wgslsmith_index_u32(0u, 18u)], true)), (u_input.a << (_wgslsmith_add_u32(u_input.a, 1u) % 32u)) != _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(29521u, 29786u, u_input.a, u_input.a) ^ vec4<u32>(23492u, 1u, 1u, 19652u)), vec4<u32>(~u_input.a, 2474u, ~u_input.a, u_input.a >> (80045u % 32u))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(46301u, u_input.a, 1u) >> (vec3<u32>(u_input.a, u_input.a, 0u) % vec3<u32>(32u)), vec3<u32>(0u, u_input.a, u_input.a)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 0u, 10833u), vec3<u32>(u_input.a, u_input.a, u_input.a))), 18u)] & !((-24393i | var_0) != u_input.b.x));
    let var_2 = Struct_1(-var_0, var_0, true);
    var var_3 = 1i;
    return var_2;
}

fn func_3(arg_0: i32) -> vec3<bool> {
    var var_0 = min(vec3<i32>(_wgslsmith_add_i32(arg_0, -max(292i, arg_0)), _wgslsmith_dot_vec4_i32(vec4<i32>(-42754i, _wgslsmith_mod_i32(-2147483647i, 13273i), arg_0, _wgslsmith_clamp_i32(-2147483647i, arg_0, -33165i)), max(min(vec4<i32>(54545i, -12422i, arg_0, u_input.b.x), vec4<i32>(arg_0, -334i, -1i, -1i)), ~vec4<i32>(1i, 1i, 13143i, arg_0))), u_input.b.x), _wgslsmith_mod_vec3_i32(firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(1i, u_input.b.x, arg_0))) | ~vec3<i32>(arg_0, u_input.b.x, u_input.b.x), vec3<i32>(-2147483647i, _wgslsmith_add_i32(-1i ^ u_input.b.x, arg_0), arg_0 | func_1().a)));
    let var_1 = func_1();
    global0 = array<bool, 18>();
    global0 = array<bool, 18>();
    global0 = array<bool, 18>();
    return vec3<bool>(true, false, var_1.c);
}

fn func_2() -> i32 {
    global0 = array<bool, 18>();
    global0 = array<bool, 18>();
    global0 = array<bool, 18>();
    let var_0 = u_input.b.x;
    var var_1 = func_3(~u_input.b.x);
    return u_input.b.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec4<i32>) -> Struct_1 {
    global0 = array<bool, 18>();
    let var_0 = func_1();
    global0 = array<bool, 18>();
    let var_1 = vec4<f32>(442f, _wgslsmith_f_op_f32(-1940f * -1103f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-564f + 109f))) * -1405f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(866f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(1181f + 392f), 1969f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2014f - -525f), _wgslsmith_f_op_f32(391f * -1000f))))));
    global0 = array<bool, 18>();
    return Struct_1(~(-(~1i << (_wgslsmith_dot_vec4_u32(arg_2.b, arg_2.a) % 32u))), 0i, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, _wgslsmith_sub_u32(~(76238u >> (arg_2.a.x % 32u)), 44776u)), 18u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 18>();
    global0 = array<bool, 18>();
    let var_0 = func_4(func_1(), Struct_1(-(~firstLeadingBit(u_input.b.x)), _wgslsmith_clamp_i32(func_2(), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(3516i, 1348i, u_input.b.x)) & countOneBits(u_input.b.x), -(~u_input.b.x)), true), Struct_3(~firstTrailingBit(~vec4<u32>(0u, u_input.a, u_input.a, 54586u)), vec4<u32>(93616u, u_input.a, u_input.a, u_input.a & 13038u), Struct_1(~u_input.b.x, _wgslsmith_mod_i32(u_input.b.x, u_input.b.x), _wgslsmith_add_i32(-2147483647i, 2147483647i) >= u_input.b.x), !select(vec3<bool>(global0[_wgslsmith_index_u32(38085u, 18u)], global0[_wgslsmith_index_u32(106312u, 18u)], global0[_wgslsmith_index_u32(u_input.a, 18u)]), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 18u)], global0[_wgslsmith_index_u32(u_input.a, 18u)], global0[_wgslsmith_index_u32(1u, 18u)]), !global0[_wgslsmith_index_u32(u_input.a, 18u)])), ~(-vec4<i32>(2147483647i, reverseBits(u_input.b.x), 4497i, _wgslsmith_mod_i32(u_input.b.x, u_input.b.x))));
    global0 = array<bool, 18>();
    global0 = array<bool, 18>();
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(563f, 697f, true)) * _wgslsmith_f_op_f32(trunc(-1450f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1636f, _wgslsmith_f_op_f32(1789f + 131f)))) * vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1573f, 1565f))), _wgslsmith_f_op_f32(min(-1210f, -1340f)))), vec4<f32>(_wgslsmith_f_op_f32(-1176f + -1084f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-110f * _wgslsmith_f_op_f32(f32(-1f) * -806f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(748f, 919f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1142f)))), -507f), i32(-1i) * -func_4(Struct_1(var_0.a, 0i, global0[_wgslsmith_index_u32(0u, 18u)]), Struct_1(-2147483647i, -2147483647i, true), Struct_3(vec4<u32>(1u, u_input.a, u_input.a, 53070u), vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), Struct_1(-3136i, var_0.b, global0[_wgslsmith_index_u32(u_input.a, 18u)]), vec3<bool>(var_0.c, true, global0[_wgslsmith_index_u32(4501u, 18u)])), vec4<i32>(u_input.b.x, 19677i, -23793i, var_0.b)).b, vec3<f32>(_wgslsmith_div_f32(414f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(585f - 524f))), -695f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1047f)), _wgslsmith_f_op_f32(f32(-1f) * -1039f)), _wgslsmith_f_op_f32(f32(-1f) * -1244f), reverseBits(0u) < u_input.a))), -1441f);
}

