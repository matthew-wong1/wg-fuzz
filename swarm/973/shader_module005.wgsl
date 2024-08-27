struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(i32(-2147483648), 6708i, -1i, -1i);

var<private> global1: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec2<bool>(true, false), 612f), Struct_1(vec2<bool>(true, true), -3247f), Struct_1(vec2<bool>(true, false), -1468f), Struct_1(vec2<bool>(false, true), 285f), Struct_1(vec2<bool>(false, false), -708f), Struct_1(vec2<bool>(false, false), 379f), Struct_1(vec2<bool>(true, true), -548f), Struct_1(vec2<bool>(false, false), 280f), Struct_1(vec2<bool>(false, false), 1030f), Struct_1(vec2<bool>(true, true), -683f), Struct_1(vec2<bool>(false, false), 111f), Struct_1(vec2<bool>(false, false), -705f), Struct_1(vec2<bool>(false, true), 1265f), Struct_1(vec2<bool>(false, false), 1418f), Struct_1(vec2<bool>(false, true), 811f), Struct_1(vec2<bool>(true, true), -292f), Struct_1(vec2<bool>(false, true), -440f), Struct_1(vec2<bool>(false, false), -769f));

var<private> global2: vec2<i32> = vec2<i32>(-28178i, i32(-2147483648));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_1() -> u32 {
    return 107151u;
}

fn func_2(arg_0: vec2<i32>, arg_1: u32, arg_2: f32) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(u_input.a, 18u)];
    global2 = countOneBits(vec2<i32>(select(reverseBits(-arg_0.x), abs(~global0.x), u_input.c < _wgslsmith_dot_vec4_u32(vec4<u32>(16253u, u_input.b, 21369u, 0u), vec4<u32>(1u, 18160u, arg_1, 1u))), -10133i));
    global1 = array<Struct_1, 18>();
    global2 = u_input.d;
    global1 = array<Struct_1, 18>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -504f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-378f))))) + 713f);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: f32) -> i32 {
    let var_0 = arg_1.a.x;
    var var_1 = global0.zy;
    var var_2 = i32(-1i) * -var_1.x;
    global0 = countOneBits((min(~vec4<i32>(2147483647i, -48047i, -2147483647i, u_input.d.x), vec4<i32>(-1i, u_input.d.x, global0.x, global2.x)) << (vec4<u32>(u_input.b, u_input.b, func_1(), firstTrailingBit(u_input.c)) % vec4<u32>(32u))) | vec4<i32>(-1i, global0.x, _wgslsmith_add_i32(arg_0 >> (u_input.a % 32u), arg_0 | var_1.x), arg_0 | -10126i));
    global0 = firstTrailingBit(vec4<i32>(~_wgslsmith_dot_vec4_i32(-vec4<i32>(arg_0, 58140i, 49016i, var_1.x), _wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, 2147483647i, arg_0, 11459i), vec4<i32>(global2.x, global0.x, 2147483647i, -30398i))), -16543i, -21247i, u_input.d.x));
    return u_input.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 18>();
    global1 = array<Struct_1, 18>();
    global2 = _wgslsmith_mult_vec2_i32(vec2<i32>(global2.x, global0.x), (_wgslsmith_mult_vec2_i32(u_input.d, u_input.d) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, u_input.a), firstTrailingBit(vec2<u32>(54509u, 4294967295u)), ~vec2<u32>(1u, u_input.c)) % vec2<u32>(32u))) ^ global0.zx);
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(vec2<i32>(9569i, -u_input.d.x), func_1(), -828f)), _wgslsmith_f_op_f32(func_2(u_input.d, _wgslsmith_mult_u32(u_input.c, max(u_input.a, u_input.a) ^ 75574u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1000f, 119f), _wgslsmith_f_op_f32(f32(-1f) * -333f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(850f))))))));
    let var_1 = reverseBits(~select(28777u, u_input.a, true)) ^ u_input.b;
    global0 = vec4<i32>(10395i, _wgslsmith_div_i32(~(_wgslsmith_dot_vec3_i32(global0.yyx, global0.wzw) | (0i | global2.x)), global2.x), u_input.d.x, ~firstTrailingBit(-func_3(u_input.d.x, Struct_1(vec2<bool>(false, true), -356f), vec3<f32>(-1044f, -690f, -1133f), 393f)));
    var var_2 = ~0u;
    let var_3 = global0.xw;
    var var_4 = Struct_2(~(_wgslsmith_div_vec2_u32(vec2<u32>(123233u, 1u), ~vec2<u32>(24507u, var_1)) & (_wgslsmith_sub_vec2_u32(vec2<u32>(var_1, var_1), vec2<u32>(u_input.a, 1u)) >> (select(vec2<u32>(var_1, u_input.c), vec2<u32>(4294967295u, 53592u), false) % vec2<u32>(32u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-395f, -142f, -320f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-257f, 481f, 271f) - vec3<f32>(532f, -218f, -787f)))))), _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(u_input.d, abs(vec2<i32>(u_input.d.x, -2147483647i))), _wgslsmith_div_vec2_i32(global0.zw, -global0.zz), -_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d.x, -59537i), u_input.d)) | global0.yw);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_u32(_wgslsmith_clamp_u32(37217u, 1u, var_1), countOneBits(~28240u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -563f), -2122f) + vec2<f32>(_wgslsmith_f_op_f32(-var_4.b.x), _wgslsmith_f_op_f32(-var_4.b.x))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1126f, _wgslsmith_f_op_f32(step(618f, var_4.b.x)))))), _wgslsmith_div_vec4_i32(select(vec4<i32>(1i, _wgslsmith_dot_vec3_i32(global0.wwy, global0.wwy), 30532i, _wgslsmith_clamp_i32(var_3.x, 0i, 1i)), vec4<i32>(firstLeadingBit(global2.x), select(var_3.x, global2.x, false), _wgslsmith_add_i32(-44025i, var_3.x), -1i), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, false), true)), firstTrailingBit(vec4<i32>(1i, -32314i, global0.x, -var_3.x))), vec4<f32>(683f, var_4.b.x, 862f, _wgslsmith_f_op_f32(trunc(638f))), _wgslsmith_f_op_f32(-var_4.b.x));
}

