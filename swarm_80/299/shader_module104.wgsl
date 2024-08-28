struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: u32 = 1u;

var<private> global2: array<Struct_2, 19>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_div_f32(-1598f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-304f, -417f, select(false, true, true))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-977f, 1495f)) - _wgslsmith_f_op_f32(-1768f * _wgslsmith_f_op_f32(ceil(-705f)))), var_0));
    var var_2 = Struct_1(select(~(~1u), select(~(1u & u_input.a.x), reverseBits(~44900u), false), all(vec2<bool>(false, false))), var_0);
    var_2 = Struct_1(u_input.d, var_2.b);
    let var_3 = global2[_wgslsmith_index_u32(u_input.a.x, 19u)];
    return 34907u;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: u32, arg_3: Struct_3) -> u32 {
    let var_0 = arg_3;
    let var_1 = max(u_input.d, 41063u);
    var var_2 = _wgslsmith_f_op_f32(trunc(1538f));
    let var_3 = all(select(!vec3<bool>(all(vec2<bool>(false, true)), false, false), !(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false))), true));
    global1 = ~var_1;
    return 46668u;
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_1(((~u_input.a.x ^ ~4294967295u) & func_4(Struct_1(11521u, -316f), u_input.a.x, func_3(), Struct_3(Struct_2(Struct_1(19351u, -384f)), global2[_wgslsmith_index_u32(u_input.d, 19u)], global0.x))) ^ 4294967295u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-404f)))))))));
    var var_1 = Struct_2(Struct_1(~u_input.a.x, var_0.b));
    var_1 = Struct_2(Struct_1(min(u_input.a.x, min(var_1.a.a, ~70148u)), var_1.a.b));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, var_0.b, -897f) * _wgslsmith_div_vec3_f32(vec3<f32>(882f, -574f, -1416f), vec3<f32>(172f, 131f, var_0.b))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(332f, var_1.a.b, 1000f) * vec3<f32>(-1000f, 1653f, var_1.a.b)))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-695f, var_1.a.b, 1000f)) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.a.b, -1613f, 1676f)))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(135f, 928f, 1066f) + vec3<f32>(2713f, var_0.b, var_1.a.b)))))));
    let var_3 = ~(~(~vec3<u32>(u_input.a.x, _wgslsmith_div_u32(u_input.d, 49590u), ~var_0.a)));
    return Struct_3(Struct_2(var_0), Struct_2(Struct_1(u_input.a.x, -822f)), _wgslsmith_div_i32(-2147483647i, _wgslsmith_dot_vec3_i32(firstLeadingBit(-u_input.e), min(vec3<i32>(1i, 2147483647i, -1i), u_input.e))));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: f32, arg_3: u32) -> vec4<i32> {
    var var_0 = ~vec4<i32>(2147483647i, i32(-1i) * -1i, 17181i, i32(-1i) * -11405i);
    var var_1 = func_2();
    global0 = arg_1;
    global2 = array<Struct_2, 19>();
    var_0 = countOneBits(~_wgslsmith_mult_vec4_i32(max(vec4<i32>(0i, 0i, global0.x, u_input.b), vec4<i32>(var_1.c, arg_1.x, 28743i, -1i)), ~vec4<i32>(global0.x, global0.x, arg_1.x, var_0.x))) ^ firstTrailingBit(-vec4<i32>(0i, countOneBits(19915i), firstLeadingBit(var_0.x), 1i));
    return ~(-vec4<i32>(~var_0.x, -41673i, 31562i, arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~abs(func_1(firstTrailingBit(_wgslsmith_div_vec4_u32(u_input.a, u_input.a)), ~max(u_input.c, u_input.c), 1f, u_input.d));
    let var_1 = vec2<f32>(1000f, -1426f);
    let var_2 = -1113f;
    global0 = u_input.c;
    global2 = array<Struct_2, 19>();
    global1 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) * _wgslsmith_f_op_f32(-var_1.x)))), u_input.d, vec3<f32>(-563f, var_1.x, 865f), u_input.e.xx, u_input.c.x);
}

