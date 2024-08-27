struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: f32,
    d: i32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 8>;

var<private> global1: i32;

var<private> global2: array<vec2<bool>, 12>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> bool {
    let var_0 = select(vec4<u32>(10045u, u_input.e, u_input.b.x, ~4294967295u), ~(~countOneBits(abs(vec4<u32>(4294967295u, u_input.b.x, u_input.e, 4294967295u)))), true);
    var var_1 = u_input.b.x;
    global0 = array<vec2<f32>, 8>();
    var var_2 = 5568u;
    var_2 = 55169u;
    return any(vec3<bool>(u_input.a.x != -_wgslsmith_sub_i32(1i, u_input.c.x), true, !any(vec4<bool>(true, true, true, true))));
}

fn func_2(arg_0: f32, arg_1: vec3<u32>) -> f32 {
    var var_0 = ~30110u;
    var var_1 = -u_input.c.x;
    var var_2 = 46726u;
    var var_3 = 87024u << (((~_wgslsmith_div_u32(u_input.e, arg_1.x) & ~_wgslsmith_mult_u32(0u, u_input.b.x)) | ~_wgslsmith_add_u32(u_input.e, countOneBits(42012u))) % 32u);
    let var_4 = !select(select(true, func_3(_wgslsmith_f_op_f32(min(1000f, arg_0))), true), func_3(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_0, arg_0), _wgslsmith_f_op_f32(select(155f, arg_0, true)), any(vec2<bool>(true, true))))), true || ((u_input.a.x >= -22228i) && any(global2[_wgslsmith_index_u32(u_input.e, 12u)])));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(arg_0)), 263f))))) + arg_0);
}

fn func_1(arg_0: vec2<u32>, arg_1: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(606f, _wgslsmith_add_vec3_u32(u_input.b, u_input.b)))), _wgslsmith_div_f32(333f, 1427f), arg_1) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 2510f, 565f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(360f, -597f, arg_1)))))))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(409f * _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, arg_1))))), -873f, 174f);
    let var_1 = Struct_1(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-260f, _wgslsmith_f_op_f32(arg_1 * 413f), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(807f, 627f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1399f, -1000f, 290f, arg_1) * vec4<f32>(arg_1, arg_1, 1211f, arg_1)))) * vec4<f32>(-1043f, _wgslsmith_f_op_f32(-103f - _wgslsmith_f_op_f32(-108f - 593f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-1000f - var_0.x), true)), -1637f)));
    var var_2 = var_1;
    let var_3 = u_input.e;
    return _wgslsmith_div_u32(~(~(~(~1u))), 10144u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(109786u, u_input.b.x, 68728u | (u_input.e >> (0u % 32u)), 27697u), min(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e, 1u, u_input.e, 1u), vec4<u32>(59079u, 1u, u_input.b.x, 1u) >> (vec4<u32>(7451u, u_input.b.x, u_input.b.x, u_input.e) % vec4<u32>(32u))), vec4<u32>(func_1(vec2<u32>(u_input.e, 9686u), -1000f), u_input.e, ~u_input.e, u_input.b.x)), ~firstTrailingBit(vec4<u32>(u_input.b.x, u_input.b.x, u_input.e, u_input.e)) >> (vec4<u32>(1u, 32874u, ~1u, u_input.b.x) % vec4<u32>(32u))), vec4<u32>(abs(_wgslsmith_mod_u32(u_input.b.x & u_input.e, ~u_input.b.x)), abs(u_input.e), _wgslsmith_div_u32(_wgslsmith_clamp_u32(func_1(vec2<u32>(28282u, u_input.e), -385f), u_input.e, u_input.b.x), u_input.e), u_input.b.x | _wgslsmith_mod_u32(u_input.b.x, 4294967295u)));
    let var_1 = !select(vec4<bool>(!any(vec2<bool>(false, true)), any(global2[_wgslsmith_index_u32(max(u_input.b.x, 38765u), 12u)]), all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true))), !any(global2[_wgslsmith_index_u32(4294967295u, 12u)])), select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false)), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, func_3(-621f), false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(select(true, true, false), true, false, true)));
    let var_2 = ~1u;
    var var_3 = ~_wgslsmith_clamp_i32(_wgslsmith_add_i32(~min(34644i, -1i), u_input.d.x), abs(1i), (2147483647i >> ((0u << (var_2 % 32u)) % 32u)) | _wgslsmith_add_i32(-2147483647i, 59938i));
    var var_4 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), false, Struct_1(any(!select(vec3<bool>(false, false, false), var_1.xww, var_1.x)), vec4<f32>(756f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1501f - -893f), -1159f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -788f))), 1945f)));
    var var_5 = vec4<bool>(true, !var_1.x, !var_1.x, -1043f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-561f * 2168f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.c.b.x))));
    global2 = array<vec2<bool>, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(firstTrailingBit(var_0.yzy), ~vec3<u32>(57976u, var_2, var_0.x)), _wgslsmith_mult_u32(var_2, 48690u) << (~69829u % 32u)), firstLeadingBit(~vec3<i32>(_wgslsmith_mult_i32(u_input.a.x, -58103i), 1i, _wgslsmith_div_i32(u_input.c.x, -2147483647i))), _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, 0i), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_4.a, var_4.a), var_4.a)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-379f)))))), var_0.x);
}

