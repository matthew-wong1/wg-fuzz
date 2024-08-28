struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-21646i, 0i, 6734i, 21759i);

var<private> global1: Struct_2;

var<private> global2: vec3<i32>;

var<private> global3: vec4<u32> = vec4<u32>(1u, 1u, 66562u, 58107u);

var<private> global4: array<vec2<f32>, 30>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(global1.b.a, ~global1.a, true, vec2<i32>(_wgslsmith_add_i32(2147483647i, global2.x), ~global1.b.d.x));
    var_0 = global1.b;
    let var_1 = vec3<f32>(-1363f, -972f, 450f);
    return _wgslsmith_dot_vec3_u32(global3.xzw, abs(global3.yxx));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec2<i32>) -> vec2<u32> {
    global1 = Struct_2(~(~func_3()), global1.b);
    global2 = _wgslsmith_mult_vec3_i32(global0.yyz, global0.xyw);
    var var_0 = 6701u;
    var var_1 = Struct_1(21887i & -arg_2.x, ~(~abs(arg_1.b) << (_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(global3.zz, vec2<u32>(arg_1.b, 1u)), _wgslsmith_add_vec2_u32(global3.zx, vec2<u32>(1u, global3.x))) % 32u)), !(!global1.b.c), global2.xz | abs(min(~global0.xz, min(vec2<i32>(3872i, 2147483647i), vec2<i32>(-2147483647i, -33086i)))));
    global0 = vec4<i32>(-612i, u_input.a.x, arg_2.x, global2.x);
    return vec2<u32>(3815u, 1252u);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<bool>) -> Struct_2 {
    let var_0 = ~_wgslsmith_dot_vec2_u32(~global3.zw, reverseBits(global3.yy ^ global3.yx) & global3.xz);
    global2 = global0.wzy;
    global3 = firstTrailingBit(abs(~reverseBits(vec4<u32>(58000u, var_0, 1u, 13854u))) | (abs(vec4<u32>(global1.b.b, 23214u, var_0, global3.x)) << (~vec4<u32>(1u, 4294967295u, 4294967295u, global1.a) % vec4<u32>(32u))));
    global4 = array<vec2<f32>, 30>();
    let var_1 = firstLeadingBit(~func_2(global3.yw, global1.b, vec2<i32>(-u_input.a.x, _wgslsmith_sub_i32(global2.x, 82766i))));
    return Struct_2(global3.x, Struct_1(global1.b.a, ~(~39612u), !select(arg_1.x, !arg_1.x, true), abs(u_input.a.yy)));
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> vec3<f32> {
    global3 = ~select(~(~(~vec4<u32>(global1.a, 0u, 5714u, 0u))), ~(~(~vec4<u32>(global1.b.b, 9410u, arg_1.b.b, arg_1.b.b))), false);
    global3 = vec4<u32>(func_2(~global3.yz, func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1447f, -959f, -1000f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1517f, 435f, 1320f))), !vec2<bool>(arg_1.b.c, false)).b, vec2<i32>(~_wgslsmith_div_i32(global0.x, global0.x), global2.x)).x, arg_1.b.b, 25767u, 16953u);
    var var_0 = vec2<u32>(_wgslsmith_dot_vec2_u32(~firstLeadingBit(countOneBits(global3.zx)), func_2(_wgslsmith_clamp_vec2_u32(~global3.xy, global3.wy, _wgslsmith_div_vec2_u32(vec2<u32>(global1.a, 26225u), global3.yz)), global1.b, u_input.a.yy >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.a, global3.x), vec2<u32>(1u, arg_1.b.b), global3.xw) % vec2<u32>(32u)))), 1u);
    var var_1 = global4[_wgslsmith_index_u32(~min(_wgslsmith_div_u32(max(~27293u, ~global1.b.b), _wgslsmith_mult_u32(firstLeadingBit(arg_1.b.b), ~global3.x)), func_3() ^ countOneBits(~global1.a)), 30u)];
    let var_2 = Struct_1(_wgslsmith_mult_i32(-74834i, ~(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, -2147483647i, global0.x, 3176i), vec4<i32>(14380i, global2.x, 24534i, u_input.a.x)) & (-2147483647i << (global1.b.b % 32u)))), global3.x, arg_0 == true, ~select(-(u_input.a.zz ^ u_input.a.zz), -vec2<i32>(global0.x, global2.x), !vec2<bool>(global1.b.c, false)));
    return vec3<f32>(-987f, -358f, -1247f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !any(!(!(!vec3<bool>(false, false, global1.b.c))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(true, func_1(vec3<f32>(-517f, -1000f, 665f), vec2<bool>(false, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(939f, 808f, -733f)))), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(947f, 1508f), -354f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(740f * 516f), -102f)), 1f)), countOneBits(firstLeadingBit(u_input.a)));
}

