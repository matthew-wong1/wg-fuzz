struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 12> = array<vec2<u32>, 12>(vec2<u32>(4294967295u, 60845u), vec2<u32>(4294967295u, 0u), vec2<u32>(36365u, 1u), vec2<u32>(14483u, 1u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 92427u), vec2<u32>(8259u, 4294967295u), vec2<u32>(45992u, 0u), vec2<u32>(30476u, 30535u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 15195u));

var<private> global1: array<vec4<i32>, 22>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2(arg_0: vec2<f32>, arg_1: f32) -> vec2<u32> {
    return vec2<u32>(29970u, abs(~(~(1u >> (u_input.a % 32u)))));
}

fn func_1() -> Struct_1 {
    var var_0 = -abs(countOneBits(firstTrailingBit(~14715i)));
    var_0 = ~_wgslsmith_mod_i32(1i, -(~_wgslsmith_sub_i32(0i, 5190i)));
    let var_1 = _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(11220u, 56657u), ~(~vec2<u32>(u_input.a, u_input.a)), vec2<u32>(~4294967295u, u_input.c.x & u_input.a)), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1168f) * vec2<f32>(-241f, -836f))), _wgslsmith_f_op_f32(round(-876f)))), u_input.c.x);
    global0 = array<vec2<u32>, 12>();
    var var_2 = vec2<i32>(~(~(_wgslsmith_div_i32(-26057i, -67545i) << (1u % 32u))), -(~1i));
    return Struct_1(vec4<i32>(abs(27954i), countOneBits(var_2.x), ~(-var_2.x), -102301i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(2060f, 1031f, false)))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-558f + 1044f) + 191f) - 1f)));
}

fn func_3(arg_0: Struct_3) -> Struct_3 {
    return arg_0;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3) -> Struct_3 {
    let var_0 = func_3(arg_1).a;
    let var_1 = Struct_2(u_input.c, Struct_1(vec4<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 0i, var_0.a.x), vec3<i32>(1i, -53426i, var_0.a.x)), arg_0.x, abs(~arg_1.a.a.x), 1i), var_0.b), Struct_1(var_0.a, arg_1.a.b), arg_1.d && false, abs(~(~_wgslsmith_add_i32(var_0.a.x, arg_0.x))));
    let var_2 = (min(select(arg_1.a.a.x, -arg_0.x, arg_1.d), -2147483647i << (u_input.c.x % 32u)) >= (_wgslsmith_mult_i32(var_1.e, i32(-1i) * -2147483647i) | _wgslsmith_sub_i32(~(-42738i), arg_1.a.a.x))) || var_1.d;
    global1 = array<vec4<i32>, 22>();
    global0 = array<vec2<u32>, 12>();
    return func_3(Struct_3(var_0, vec3<f32>(-1310f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.b.x, -530f) + var_0.b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(arg_1.b.x)), -1564f))), ~(~arg_1.c), var_2));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 22>();
    let var_0 = firstTrailingBit(1i);
    let var_1 = func_4(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(abs(u_input.c), u_input.c), ~u_input.b.x), 22u)], func_3(Struct_3(func_1(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-663f, -1586f, 1391f))), 0u, all(vec3<bool>(true, true, true)))));
    global0 = array<vec2<u32>, 12>();
    var var_2 = ~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(max(abs(u_input.c), countOneBits(vec4<u32>(u_input.c.x, u_input.a, u_input.c.x, 102361u))), u_input.c, _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.c, u_input.c), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 1u, var_1.c, 9401u), u_input.c))), u_input.c), 22u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.x, ~_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(max(var_2.yy, var_2.zy), max(var_2.yz, var_1.a.a.wy)), reverseBits(select(vec2<i32>(var_2.x, var_0), var_1.a.a.xw, vec2<bool>(var_1.d, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.b + -632f) * _wgslsmith_f_op_f32(-func_1().b))), func_3(func_3(func_3(var_1))).c);
}

