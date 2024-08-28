struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

var<private> global1: f32;

var<private> global2: array<Struct_1, 23>;

var<private> global3: f32;

var<private> global4: vec3<f32> = vec3<f32>(-1000f, 814f, -223f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    let var_0 = true;
    global0 = array<Struct_1, 15>();
    var var_1 = i32(-1i) * -4667i;
    var var_2 = vec2<bool>(any(select(vec2<bool>(any(vec2<bool>(arg_2.b, false)), u_input.b.x < 2147483647i), !select(vec2<bool>(false, arg_2.a), vec2<bool>(true, false), false), vec2<bool>(true, true))), arg_2.a);
    let var_3 = abs(firstTrailingBit(u_input.a) ^ u_input.a);
    return -772f;
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: i32) -> f32 {
    var var_0 = global2[_wgslsmith_index_u32(u_input.a.x, 23u)];
    global0 = array<Struct_1, 15>();
    return -665f;
}

fn func_4(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    let var_0 = Struct_2(0u >= ~u_input.a.x, arg_1);
    var var_1 = Struct_2(!all(!vec4<bool>(arg_1, arg_1, arg_1, arg_2.b)), false);
    global3 = _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1449f))));
    var var_2 = vec2<bool>(all(select(select(vec3<bool>(var_1.b, true, var_1.a), vec3<bool>(false, arg_2.b, true), true), select(vec3<bool>(var_1.a, false, arg_2.b), vec3<bool>(true, arg_1, true), vec3<bool>(false, true, arg_2.b)), select(vec3<bool>(arg_2.b, arg_1, false), vec3<bool>(true, arg_2.b, false), vec3<bool>(false, true, false)))) | true, all(!vec2<bool>(289f <= global4.x, true)));
    global3 = _wgslsmith_div_f32(-117f, global4.x);
    return global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(select(_wgslsmith_mult_u32(4294967295u, u_input.a.x), u_input.a.x, arg_1), _wgslsmith_div_u32(~u_input.a.x, 84474u), min(u_input.a.x, u_input.a.x), ~u_input.a.x), ~min(vec4<u32>(u_input.a.x, u_input.a.x, countOneBits(u_input.a.x), u_input.a.x), select(vec4<u32>(0u, 57153u, 1u, u_input.a.x), ~vec4<u32>(29456u, 1u, u_input.a.x, u_input.a.x), any(vec4<bool>(true, arg_2.b, var_0.b, arg_2.a))))), 23u)];
}

fn func_1() -> u32 {
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, 147f, -440f, global4.x)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global4.x, 344f, global4.x, global4.x)))))), vec4<f32>(358f, _wgslsmith_f_op_f32(abs(-390f)), _wgslsmith_f_op_f32(global4.x - _wgslsmith_f_op_f32(func_2(vec2<f32>(global4.x, -337f), Struct_1(vec2<i32>(u_input.b.x, u_input.b.x), global4.x), Struct_2(false, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<bool>(true, false), Struct_2(true, false), u_input.b.x)))))), all(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), Struct_2(all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false))) | false, any(select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), all(vec2<bool>(true, false))))));
    global0 = array<Struct_1, 15>();
    var var_1 = Struct_2(true, true);
    let var_2 = vec2<bool>(var_1.b, (u_input.a.x >= u_input.a.x) || false);
    let var_3 = Struct_2(all(select(select(!vec4<bool>(true, var_2.x, var_2.x, var_1.a), select(vec4<bool>(true, var_1.b, true, var_1.b), vec4<bool>(true, true, true, true), false), vec4<bool>(var_1.a, false, var_1.b, var_2.x)), select(!vec4<bool>(var_2.x, true, var_1.b, var_2.x), !vec4<bool>(true, true, false, var_1.a), vec4<bool>(false, false, var_2.x, false)), !select(vec4<bool>(var_1.b, true, var_2.x, false), vec4<bool>(true, var_1.a, var_2.x, false), vec4<bool>(var_1.a, false, true, var_2.x)))), 67474i < firstLeadingBit(_wgslsmith_clamp_i32(abs(-2147483647i), _wgslsmith_clamp_i32(2147483647i, -2147483647i, var_0.a.x), ~0i)));
    return ~(0u << (~u_input.a.x % 32u));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_2 {
    let var_0 = reverseBits(abs(vec2<i32>(~(arg_0.a.x >> (51463u % 32u)), _wgslsmith_mod_i32(arg_1.x, 5612i))));
    var var_1 = global2[_wgslsmith_index_u32(min(_wgslsmith_mod_u32(~(~(~38872u)), u_input.a.x), ~(~u_input.a.x)), 23u)];
    global1 = _wgslsmith_f_op_f32(-var_1.b);
    let var_2 = Struct_2(false, !(!(_wgslsmith_add_i32(var_0.x, -2147483647i) == _wgslsmith_clamp_i32(var_1.a.x, 2147483647i, arg_0.a.x))));
    let var_3 = vec3<u32>(4294967295u, u_input.a.x ^ 9375u, u_input.a.x);
    return Struct_2(true, select(select((u_input.a.x > u_input.a.x) == select(true, var_2.a, true), true, var_2.b), false, all(vec4<bool>(true, var_2.b, var_2.b || var_2.b, var_2.a))));
}

fn func_6(arg_0: Struct_2) -> Struct_1 {
    global0 = array<Struct_1, 15>();
    let var_0 = global2[_wgslsmith_index_u32(~firstTrailingBit(64610u), 23u)];
    let var_1 = -_wgslsmith_mult_vec3_i32(min(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, var_0.a.x, var_0.a.x), vec3<i32>(-1i, var_0.a.x, var_0.a.x)), vec3<i32>(-60483i, u_input.b.x, var_0.a.x) >> (u_input.a % vec3<u32>(32u))) ^ u_input.b, vec3<i32>(~var_0.a.x, ~func_4(vec4<f32>(977f, -336f, var_0.b, 105f), arg_0.a, Struct_2(false, arg_0.a)).a.x, 0i));
    return Struct_1(min(-(vec2<i32>(-1i) * -vec2<i32>(u_input.b.x, -12394i)), _wgslsmith_add_vec2_i32(var_0.a, -reverseBits(vec2<i32>(var_0.a.x, u_input.b.x)))), global4.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(global2[_wgslsmith_index_u32(firstTrailingBit(func_1()), 23u)], reverseBits(~vec3<i32>(-2147483647i, u_input.b.x, -38563i))));
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global4.x, _wgslsmith_f_op_f32(select(global4.x, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2244f, 1000f)), Struct_1(vec2<i32>(-37574i, var_0.a.x), -1551f), Struct_2(false, false))), true)))));
    let var_1 = ~u_input.a.zy;
    global4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1172f, _wgslsmith_f_op_f32(-467f * var_0.b), 1u < var_1.x))), 1736f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(global4.x, global4.x)))), 1000f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(global4.x)), _wgslsmith_f_op_f32(ceil(global4.x)), -1245f))));
    global0 = array<Struct_1, 15>();
    global0 = array<Struct_1, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(0u, u_input.a.x, select(4294967295u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), u_input.a.x), all(vec2<bool>(true, true)))), u_input.a, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -198f) + -2066f), -833f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-406f, var_0.b))))));
}

