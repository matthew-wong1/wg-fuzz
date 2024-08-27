struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: bool,
    e: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: f32,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 1> = array<vec3<f32>, 1>(vec3<f32>(597f, -1187f, 1597f));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> u32 {
    global0 = array<vec3<f32>, 1>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1477f)));
    global0 = array<vec3<f32>, 1>();
    global0 = array<vec3<f32>, 1>();
    var var_1 = select(all(vec2<bool>(true, true)), any(vec2<bool>(true, all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), true)))), (_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0)), 347f) >= _wgslsmith_f_op_f32(f32(-1f) * -814f)) && any(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true))));
    return firstLeadingBit(u_input.c.x << (47695u % 32u));
}

fn func_2(arg_0: f32) -> vec4<bool> {
    global0 = array<vec3<f32>, 1>();
    var var_0 = vec4<u32>(0u, 58302u << (func_3(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(0i, u_input.a), u_input.b, ~0i)) % 32u), 32513u, firstTrailingBit(_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, ~(~22605u))));
    var var_1 = Struct_1(select(vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(67566u, var_0.x), vec2<u32>(u_input.c.x, var_0.x)), vec2<u32>(u_input.c.x, var_0.x)), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, u_input.c.x, 4294967295u), vec3<u32>(var_0.x, 1u, u_input.c.x)), u_input.c.x), ~1u), _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, 4294967295u, u_input.c.x), abs(firstTrailingBit(vec3<u32>(19050u, 1u, var_0.x)))), select(vec3<bool>(false, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), true), true)), ~(~(~var_0.x) & var_0.x), 93225u, any(vec3<bool>(true, true, var_0.x >= var_0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -1309f)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-439f, 1788f)))) - vec2<f32>(_wgslsmith_f_op_f32(-arg_0), arg_0))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-126f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1539f) + -1479f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-136f - -1525f) - var_1.e.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(global0[_wgslsmith_index_u32(var_1.b, 1u)]))))) * _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(u_input.c.x ^ var_1.b, 1u)] + global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_0.yx << (vec2<u32>(var_0.x, var_0.x) % vec2<u32>(32u)), vec2<u32>(var_1.c, var_0.x) ^ vec2<u32>(17686u, 1u)), 1u)])));
    return select(!vec4<bool>(!(u_input.d == u_input.a), !(!var_1.d), true, any(vec3<bool>(false, var_1.d, false))), !vec4<bool>(true, false, false && (u_input.c.x >= 1u), any(!vec3<bool>(true, var_1.d, var_1.d))), select(select(!(!vec4<bool>(var_1.d, var_1.d, var_1.d, false)), vec4<bool>(false, 68214u < u_input.c.x, false | var_1.d, var_1.d & var_1.d), select(vec4<bool>(var_1.d, var_1.d, var_1.d, var_1.d), !vec4<bool>(var_1.d, var_1.d, false, false), all(vec2<bool>(false, var_1.d)))), !(!select(vec4<bool>(var_1.d, true, var_1.d, true), vec4<bool>(false, true, false, true), var_1.d)), var_1.d));
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1878f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-726f))))));
    global0 = array<vec3<f32>, 1>();
    var var_1 = u_input.c.x;
    var var_2 = func_2(-182f);
    let var_3 = Struct_2(20362u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-819f, _wgslsmith_f_op_f32(step(521f, -303f)), 1000f, _wgslsmith_div_f32(818f, -1844f)))), -436f);
    return abs(u_input.c.x) & 20274u;
}

fn func_4(arg_0: Struct_1) -> bool {
    global0 = array<vec3<f32>, 1>();
    global0 = array<vec3<f32>, 1>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(770f - -492f) - arg_0.e.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_0.e.x)), 1886f))), 377f)));
    var var_1 = arg_0;
    var var_2 = !select(!func_2(-1286f).ywy, select(!(!vec3<bool>(true, var_1.d, var_1.d)), !(!vec3<bool>(arg_0.d, false, var_1.d)), select(select(vec3<bool>(arg_0.d, arg_0.d, arg_0.d), vec3<bool>(true, true, arg_0.d), false), !vec3<bool>(false, var_1.d, var_1.d), false)), _wgslsmith_mod_u32(var_1.c, 551u) < ~(~1959u));
    return func_2(var_0.x).x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-280f, _wgslsmith_div_f32(200f, 1530f))))));
    global0 = array<vec3<f32>, 1>();
    global0 = array<vec3<f32>, 1>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(1u, 1u)]);
    let var_2 = _wgslsmith_f_op_f32(select(-104f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0, _wgslsmith_f_op_f32(floor(367f))))), func_4(Struct_1(~vec3<u32>(12700u, 1u, u_input.c.x) | ~vec3<u32>(u_input.c.x, 4623u, 1u), func_1() ^ (u_input.c.x >> (u_input.c.x % 32u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(22187u, 0u), _wgslsmith_div_vec2_u32(u_input.c, vec2<u32>(u_input.c.x, 62378u))), func_2(_wgslsmith_f_op_f32(-var_0)).x, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.yx, var_1.zy) + _wgslsmith_f_op_vec2_f32(-var_1.xy))))));
    let x = u_input.a;
    s_output = StorageBuffer(func_3(firstLeadingBit(-2147483647i)), vec4<i32>(_wgslsmith_div_i32(firstTrailingBit(-15029i), _wgslsmith_mult_i32(0i, u_input.a) << (~9629u % 32u)), 0i, _wgslsmith_add_i32(abs(-2147483647i), min(u_input.b, u_input.d) | (i32(-1i) * -1i)), min(-u_input.b, -2147483647i)), var_2, 0u, 41728i);
}

