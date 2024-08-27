struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec3<bool>,
    d: vec2<bool>,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 30>;

var<private> global1: Struct_3;

var<private> global2: vec3<bool>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2) -> f32 {
    global2 = arg_0.c;
    let var_0 = _wgslsmith_mult_i32(~select(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.a, 11919i, global1.a, 0i), firstTrailingBit(vec4<i32>(u_input.a, u_input.c.x, global1.a, 0i))), -(global1.a | global1.a), arg_2.a <= 1u), abs(-u_input.c.x));
    let var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.b.x, ~(~4294967295u), 4294967295u, ~1u & _wgslsmith_dot_vec3_u32(~arg_2.b, vec3<u32>(arg_2.c, arg_2.a, arg_0.e) << (vec3<u32>(4294967295u, 38941u, arg_0.e) % vec3<u32>(32u)))), countOneBits(~(~_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.b.x, arg_0.e, 20492u, arg_0.e), vec4<u32>(72832u, arg_2.c, arg_0.e, 36554u)))));
    let var_2 = arg_2;
    let var_3 = ~_wgslsmith_mult_vec2_i32(vec2<i32>(-(u_input.a ^ 2147483647i), -firstLeadingBit(var_0)), u_input.c.zz);
    return -313f;
}

fn func_2(arg_0: i32, arg_1: i32) -> u32 {
    global2 = vec3<bool>(false, true, true);
    var var_0 = reverseBits(0u) | _wgslsmith_div_u32(abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 18293u, 54347u, 91731u), vec4<u32>(1u, 1u, 15267u, 1u))), abs(reverseBits(1u)));
    var var_1 = Struct_1(all(vec2<bool>(true, false)), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -322f) - -822f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(498f + -1128f), _wgslsmith_f_op_f32(-1414f * -117f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -333f) + _wgslsmith_f_op_f32(func_3(Struct_1(global2.x, vec3<f32>(-840f, -746f, 418f), vec3<bool>(global2.x, true, true), vec2<bool>(true, false), 41566u), 1144f, Struct_2(4294967295u, vec3<u32>(4294967295u, 1u, 9805u), 0u))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -787f), _wgslsmith_f_op_f32(f32(-1f) * -791f), true)))), vec3<bool>(any(select(vec3<bool>(true, global2.x, global2.x), vec3<bool>(global2.x, false, global2.x), any(vec4<bool>(global2.x, true, false, true)))), false, all(vec4<bool>(true, global2.x, true, any(global0[_wgslsmith_index_u32(4294967295u, 30u)])))), !global2.xx, 29099u);
    return var_1.e;
}

fn func_1() -> u32 {
    global2 = !vec3<bool>(global2.x, all(global0[_wgslsmith_index_u32(func_2(global1.a, -9984i) >> (~4086u % 32u), 30u)]), false);
    global1 = Struct_3(firstTrailingBit(u_input.b.x));
    var var_0 = select(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(~45400u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(14339u, 18428u, 7283u), vec3<u32>(1u, 604u, 1u)), 1u)), 19580u, false);
    var var_1 = u_input.c.x;
    var_1 = -27180i;
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 30>();
    let var_0 = select(countOneBits(~vec2<i32>(-18945i, u_input.a)), countOneBits(u_input.b.zz), global2.zx) >> (vec2<u32>(~1u, ~func_1()) % vec2<u32>(32u));
    let var_1 = ~(~vec4<u32>(1u, 1u, 1u, 1u));
    var var_2 = Struct_2(4294967295u, var_1.xxy, _wgslsmith_dot_vec2_u32(~var_1.xw, _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(firstTrailingBit(var_1.zz), var_1.yx), var_1.xx, vec2<u32>(var_1.x, _wgslsmith_dot_vec3_u32(var_1.xxz, vec3<u32>(81962u, var_1.x, var_1.x))))));
    var var_3 = !(!global0[_wgslsmith_index_u32(~var_2.a, 30u)]);
    var_3 = global0[_wgslsmith_index_u32(20048u, 30u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1437f)), -271f, u_input.b.yz);
}

