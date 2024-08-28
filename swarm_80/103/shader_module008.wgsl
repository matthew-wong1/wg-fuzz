struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 30>;

var<private> global1: array<Struct_3, 30>;

var<private> global2: u32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> i32 {
    global1 = array<Struct_3, 30>();
    let var_0 = all(vec3<bool>(true, all(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false)), select(false, any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), false)), all(vec4<bool>(true, true, false, true)))));
    let var_1 = select(!vec2<bool>(!any(vec2<bool>(var_0, false)), true), !(!vec2<bool>(var_0, true)), all(vec2<bool>(true, true)));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(547f, 306f, 399f), vec3<f32>(-900f, 222f, -1422f), vec3<bool>(var_1.x, var_1.x, var_1.x))) - vec3<f32>(1f, 1f, 1f)))) + vec3<f32>(-1263f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-728f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1197f + -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(694f + -1028f))))));
    let var_3 = u_input.a.x;
    return u_input.c.x << (var_3 % 32u);
}

fn func_1(arg_0: vec4<f32>) -> i32 {
    var var_0 = vec4<i32>(0i, 44170i, ~_wgslsmith_div_i32(-2147483647i ^ func_2(), u_input.c.x), max(3535i, u_input.c.x));
    let var_1 = u_input.c.x;
    var var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(303f, arg_0.x))), _wgslsmith_f_op_f32(-1f)), arg_0.wz);
    global0 = array<vec3<u32>, 30>();
    var var_3 = _wgslsmith_clamp_vec4_u32(reverseBits(~vec4<u32>(abs(u_input.e.x), 26274u, u_input.d, u_input.e.x)), max(countOneBits(~vec4<u32>(77021u, u_input.e.x, 31618u, u_input.a.x)), ~vec4<u32>(~0u, u_input.b, ~1u, 123988u)), reverseBits(vec4<u32>(max(~u_input.b, 6420u | u_input.e.x), 36225u, ~3985u, ~(~u_input.b))));
    return -3104i;
}

fn func_3(arg_0: Struct_5, arg_1: vec4<i32>) -> Struct_4 {
    global0 = array<vec3<u32>, 30>();
    global2 = 0u;
    global2 = arg_0.c;
    var var_0 = all(!select(!vec4<bool>(false, true, false, arg_0.b), !select(vec4<bool>(true, true, arg_0.b, arg_0.b), vec4<bool>(false, arg_0.b, false, arg_0.b), vec4<bool>(arg_0.b, false, true, arg_0.b)), all(vec3<bool>(arg_0.b, false, true)) && !arg_0.b));
    let var_1 = Struct_4(-u_input.c);
    return Struct_4(min(vec3<i32>(-arg_1.x, reverseBits(1i), ~2147483647i), vec3<i32>(u_input.c.x, arg_0.a.b, 13996i)) & _wgslsmith_mult_vec3_i32(var_1.a, u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x;
    var var_1 = func_3(Struct_5(Struct_1(u_input.c.x, 1i), true, 1u), vec4<i32>(func_1(vec4<f32>(_wgslsmith_f_op_f32(floor(-1070f)), -397f, _wgslsmith_f_op_f32(ceil(163f)), 417f)), select(i32(-1i) * -u_input.c.x, _wgslsmith_clamp_i32(u_input.c.x, 7940i, ~(-2147483647i)), true), 1i, ~_wgslsmith_mod_i32(u_input.c.x >> (1u % 32u), 9850i)));
    var var_2 = Struct_4(vec3<i32>(0i, abs(0i), ~func_2()) << (max(~vec3<u32>(u_input.b, 25185u, 1u) << (u_input.a % vec3<u32>(32u)), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, 0u, 1u) >> (1u % 32u), 30u)]) % vec3<u32>(32u)));
    let var_3 = ~_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(-abs(var_1.a), -vec3<i32>(var_1.a.x, 2147483647i, u_input.c.x)), vec3<i32>(~50850i, func_2(), ~reverseBits(1i)));
    var_2 = Struct_4(vec3<i32>(~func_3(Struct_5(Struct_1(2147483647i, 0i), false, 60372u), vec4<i32>(var_3, 2147483647i, 57876i, var_3)).a.x, 57866i, _wgslsmith_mod_i32(u_input.c.x, u_input.c.x)));
    let var_4 = Struct_1(var_2.a.x, -2147483647i);
    let var_5 = func_3(Struct_5(Struct_1((var_4.a << (21238u % 32u)) >> (4294967295u % 32u), 1544i), 9960u > ~firstTrailingBit(1u), ~(~select(u_input.d, u_input.b, true))), vec4<i32>(-2147483647i, var_2.a.x, ~(u_input.c.x ^ -1i), var_3));
    let var_6 = select(max(36691u, firstTrailingBit(~u_input.b)), ~u_input.a.x, 833f <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_7 = vec2<bool>(true, !any(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false))));
    let x = u_input.a;
    s_output = StorageBuffer(var_6);
}

