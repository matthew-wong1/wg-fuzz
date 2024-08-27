struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: bool,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 7> = array<vec4<i32>, 7>(vec4<i32>(2147483647i, 5905i, 6114i, 2147483647i), vec4<i32>(-39428i, -29113i, -26868i, 1i), vec4<i32>(-905i, 1i, 0i, 0i), vec4<i32>(0i, 0i, -1i, 1i), vec4<i32>(10968i, 2147483647i, 1i, -1i), vec4<i32>(2147483647i, 12676i, -10127i, 0i), vec4<i32>(2147483647i, -1i, 18509i, 51530i));

var<private> global1: array<f32, 17> = array<f32, 17>(-1077f, 811f, -1000f, 1357f, 945f, -1000f, -558f, 1685f, 2331f, 350f, -569f, 888f, 1382f, 526f, 1645f, -489f, 496f);

var<private> global2: array<Struct_4, 9> = array<Struct_4, 9>(Struct_4(vec3<i32>(0i, 1i, 23676i)), Struct_4(vec3<i32>(i32(-2147483648), -9630i, i32(-2147483648))), Struct_4(vec3<i32>(-7714i, 10510i, 38471i)), Struct_4(vec3<i32>(0i, 25326i, -38164i)), Struct_4(vec3<i32>(-1i, 40221i, i32(-2147483648))), Struct_4(vec3<i32>(-1i, -7122i, -7744i)), Struct_4(vec3<i32>(2147483647i, 1i, 0i)), Struct_4(vec3<i32>(12990i, -1i, 1i)), Struct_4(vec3<i32>(i32(-2147483648), 1i, 39578i)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec3<i32> {
    var var_0 = (5123i < ~_wgslsmith_div_i32(-2147483647i, u_input.a.x)) | all(vec4<bool>(true, _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(1u, 17u)], -608f)) == _wgslsmith_f_op_f32(137f + -123f), u_input.a.x >= (i32(-1i) * -38159i), false));
    let var_1 = Struct_1(16089i);
    let var_2 = var_1;
    let var_3 = u_input.a;
    var var_4 = _wgslsmith_add_vec2_u32(~vec2<u32>(select(_wgslsmith_dot_vec4_u32(vec4<u32>(24354u, 28804u, u_input.b, u_input.b), vec4<u32>(u_input.b, 0u, 33141u, 1u)), 2440u, true), select(_wgslsmith_sub_u32(u_input.b, u_input.b), firstLeadingBit(4294967295u), false)), abs(select(_wgslsmith_mod_vec2_u32(~vec2<u32>(0u, 0u), ~vec2<u32>(u_input.b, 1859u)), vec2<u32>(~4294967295u, firstLeadingBit(4294967295u)), false)));
    return vec3<i32>(_wgslsmith_mult_i32(var_2.a << (~(~u_input.b) % 32u), _wgslsmith_div_i32(abs(1i), -1381i)), var_3.x, u_input.a.x);
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = -2147483647i;
    let var_1 = ~(-_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(arg_0.a, var_0, var_0)), func_3()) ^ (~vec3<i32>(var_0, u_input.a.x, 4073i) << (vec3<u32>(23644u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(4294967295u, 4294967295u)), ~17499u) % vec3<u32>(32u))));
    return 0u;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<f32>) -> u32 {
    let var_0 = all(vec2<bool>(true, true));
    global2 = array<Struct_4, 9>();
    var var_1 = _wgslsmith_dot_vec4_u32(~vec4<u32>(~1u, _wgslsmith_sub_u32(u_input.b, max(36258u, 1u)), ~func_2(Struct_1(u_input.a.x)), _wgslsmith_dot_vec4_u32(arg_0, _wgslsmith_sub_vec4_u32(arg_0, vec4<u32>(u_input.b, arg_0.x, 1u, arg_0.x)))), arg_0);
    var var_2 = Struct_3(!select(!vec3<bool>(var_0, var_0, false), !vec3<bool>(false, var_0, true), !var_0), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.xzy * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.wyw))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1357f) * 152f), global1[_wgslsmith_index_u32(arg_0.x, 17u)], _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-583f)))))), !var_0, Struct_1(_wgslsmith_div_i32((i32(-1i) * -4438i) >> ((10362u >> (arg_0.x % 32u)) % 32u), u_input.a.x)), !select(!vec3<bool>(var_0, true, var_0), !vec3<bool>(var_0, var_0, var_0), vec3<bool>(false, true, true)));
    let var_3 = _wgslsmith_f_op_f32(-arg_1.x);
    return (~18071u >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(34777u, 1u, 9572u, arg_0.x), arg_0) % 32u)) >> (firstLeadingBit(firstLeadingBit(~4294967295u << (~4294967295u % 32u))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~u_input.b ^ 50393u, 17u)] + _wgslsmith_f_op_f32(max(-341f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.b, 17u)], global1[_wgslsmith_index_u32(u_input.b, 17u)]))))));
    global2 = array<Struct_4, 9>();
    let var_1 = ~global0[_wgslsmith_index_u32(func_1(vec4<u32>(75636u, _wgslsmith_div_u32(44532u, 4294967295u), u_input.b, u_input.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, _wgslsmith_f_op_f32(-1276f * 1655f), 203f) - vec4<f32>(533f, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(min(var_0, global1[_wgslsmith_index_u32(u_input.b, 17u)])), global1[_wgslsmith_index_u32(~1u, 17u)]))), 7u)];
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(~4294967295u, u_input.b, ~21613u), reverseBits(abs(~vec3<u32>(1u, 15142u, 2344u)))), ~u_input.b), 9u)];
    global0 = array<vec4<i32>, 7>();
    var var_3 = ~4294967295u;
    var_3 = ~u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(2529f, -711f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1751f, -870f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(436f, global1[_wgslsmith_index_u32(u_input.b, 17u)]))) + vec2<f32>(_wgslsmith_f_op_f32(step(695f, -965f)), _wgslsmith_f_op_f32(f32(-1f) * -1107f)))), 88938u, vec2<i32>(abs(~_wgslsmith_mult_i32(var_2.a.x, -1i)), 1i));
}

