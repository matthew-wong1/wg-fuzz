struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9> = array<u32, 9>(16761u, 1u, 31987u, 26993u, 1u, 4294967295u, 1238u, 45434u, 79118u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    global0 = array<u32, 9>();
    return Struct_1(64278u, u_input.b.x, arg_0.x, ~u_input.d | u_input.d);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_4 {
    var var_0 = arg_0.d;
    global0 = array<u32, 9>();
    var var_1 = arg_1.wzx;
    var_0 = reverseBits(vec4<i32>(-27763i, 24169i, reverseBits(~(-36355i)), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c, 1000f, arg_0.c, -125f)))).d.x));
    var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(var_1.x, _wgslsmith_dot_vec4_i32(abs(_wgslsmith_add_vec4_i32(arg_0.d, arg_1)), abs(u_input.d) ^ arg_1), ~(-(var_0.x << (u_input.a.x % 32u)))), abs(var_0.xxw));
    return Struct_4(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.c, arg_0.c, 332f), vec3<f32>(arg_0.c, -1421f, arg_0.c)) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(522f, arg_0.c, arg_0.c)))), vec3<f32>(_wgslsmith_f_op_f32(floor(298f)), -1585f, arg_0.c))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c, arg_0.c, 1074f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(989f, arg_0.c, arg_0.c))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.c, -470f, arg_0.c, 808f))) * vec4<f32>(2073f, 1f, arg_0.c, arg_0.c)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, -898f, arg_0.c, 1367f) * vec4<f32>(-398f, -1865f, 1708f, arg_0.c))))), Struct_1(arg_0.a, _wgslsmith_dot_vec2_u32(u_input.b.xy, u_input.b.yx), _wgslsmith_f_op_f32(-arg_0.c), vec4<i32>(_wgslsmith_add_i32(~var_0.x, _wgslsmith_add_i32(var_1.x, 5732i)), u_input.d.x, i32(-1i) * -var_0.x, firstTrailingBit(var_1.x))), _wgslsmith_dot_vec3_i32(select(~(~vec3<i32>(-74991i, u_input.d.x, arg_1.x)), vec3<i32>(_wgslsmith_dot_vec2_i32(arg_1.xx, vec2<i32>(-2147483647i, var_1.x)), _wgslsmith_add_i32(arg_0.d.x, arg_1.x), -u_input.d.x), false), arg_0.d.zyw));
}

fn func_1() -> f32 {
    global0 = array<u32, 9>();
    let var_0 = func_3(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1590f, 262f, 265f, 316f)))), u_input.d);
    var var_1 = u_input.b.yz;
    var var_2 = vec2<i32>(var_0.c.d.x, _wgslsmith_mult_i32(i32(-1i) * -var_0.c.d.x, var_0.d << (20727u % 32u)));
    var var_3 = true;
    return 754f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 9>();
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-2517f, -560f, -261f)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(933f * -269f)), _wgslsmith_f_op_f32(func_1()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-870f - -973f), 549f)))), Struct_2(select(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), false)));
    global0 = array<u32, 9>();
    var var_1 = u_input.b.zz;
    var var_2 = reverseBits(abs(vec2<u32>(6637u, var_1.x | abs(var_1.x))));
    let var_3 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, 113f, var_0.a.x, 1110f) + func_3(Struct_1(var_1.x, global0[_wgslsmith_index_u32(19454u, 9u)], -513f, u_input.d), vec4<i32>(-2147483647i, u_input.d.x, u_input.d.x, u_input.d.x)).b), vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -521f), var_0.a.x, var_0.a.x), !(var_0.b.a.x & var_0.b.a.x)))));
    var_1 = vec2<u32>(1u, _wgslsmith_add_u32(var_3.b, 1u));
    var var_4 = var_0.b;
    var_2 = ~u_input.a.yy;
    let x = u_input.a;
    s_output = StorageBuffer(min(vec3<u32>(~var_2.x, ~_wgslsmith_add_u32(1u, var_2.x), 1u), _wgslsmith_mult_vec3_u32(u_input.b, select(vec3<u32>(4294967295u, var_2.x, 29652u), u_input.a, vec3<bool>(true, var_4.a.x, var_0.b.a.x)))), var_3.a, vec2<u32>(~(~4294967295u), ~(~86919u)), var_3.c, global0[_wgslsmith_index_u32(10439u, 9u)]);
}

