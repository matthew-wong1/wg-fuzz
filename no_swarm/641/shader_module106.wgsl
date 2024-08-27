struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec2<u32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2> = array<i32, 2>(27227i, 41432i);

var<private> global1: vec2<bool> = vec2<bool>(false, true);

var<private> global2: array<bool, 30> = array<bool, 30>(false, false, false, true, true, false, false, false, true, false, false, false, true, false, false, false, true, false, false, true, false, false, true, true, true, false, true, false, false, true);

var<private> global3: array<bool, 31> = array<bool, 31>(false, true, false, false, false, false, true, false, false, false, false, true, false, false, true, true, false, true, true, false, false, true, true, false, true, false, true, true, false, true, true);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: i32) -> vec2<f32> {
    let var_0 = -1000f;
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2187f), _wgslsmith_f_op_f32(-183f * var_0), 1320f) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(141f, var_0, -134f)))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-928f, var_0, var_0) - vec3<f32>(-2046f, -825f, 1271f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * vec3<f32>(-1000f, var_0, -409f)))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0, var_0, 355f)))))));
    global0 = array<i32, 2>();
    var var_2 = Struct_1(!(!any(vec2<bool>(global1.x, false)) || all(select(vec3<bool>(global1.x, false, arg_0), vec3<bool>(global1.x, global3[_wgslsmith_index_u32(4294967295u, 31u)], false), global1.x))), vec4<f32>(-365f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(step(-178f, var_1.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-730f + var_0))), _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, -1739f), var_1.zz), abs(firstTrailingBit(min(u_input.c, vec2<u32>(u_input.c.x, u_input.b) << (u_input.c % vec2<u32>(32u))))), select(vec3<bool>(1u == u_input.c.x, !global3[_wgslsmith_index_u32(0u, 31u)] & true, global3[_wgslsmith_index_u32(countOneBits(u_input.a), 31u)]), select(vec3<bool>(any(vec3<bool>(global1.x, false, arg_0)), true, global3[_wgslsmith_index_u32(15513u, 31u)]), select(!vec3<bool>(arg_0, false, global3[_wgslsmith_index_u32(u_input.a, 31u)]), !vec3<bool>(global3[_wgslsmith_index_u32(0u, 31u)], global3[_wgslsmith_index_u32(u_input.c.x, 31u)], false), true), !select(vec3<bool>(global2[_wgslsmith_index_u32(64717u, 30u)], false, global2[_wgslsmith_index_u32(18764u, 30u)]), vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 31u)], true, true), vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 31u)], global1.x, global3[_wgslsmith_index_u32(u_input.c.x, 31u)]))), !select(vec3<bool>(true, global3[_wgslsmith_index_u32(0u, 31u)], false), select(vec3<bool>(false, arg_0, global3[_wgslsmith_index_u32(51189u, 31u)]), vec3<bool>(true, false, true), global1.x), !vec3<bool>(false, arg_0, false))));
    let var_3 = ~reverseBits(-1i);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.c + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(var_2.b.ww, var_1.xy), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.zy, var_1.zy) * _wgslsmith_f_op_vec2_f32(-var_1.xz))))));
}

fn func_2() -> f32 {
    global2 = array<bool, 30>();
    global3 = array<bool, 31>();
    let var_0 = _wgslsmith_f_op_vec2_f32(func_3(true, ~(-_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 30945i, global0[_wgslsmith_index_u32(1u, 2u)], -4073i), vec4<i32>(-2147483647i, u_input.d, 1i, 0i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, 1i, -1i, global0[_wgslsmith_index_u32(25539u, 2u)]), vec4<i32>(u_input.d, u_input.d, u_input.d, 54277i))))));
    global1 = select(vec2<bool>(global2[_wgslsmith_index_u32(~abs(_wgslsmith_dot_vec3_u32(vec3<u32>(28079u, 1u, 4294967295u), vec3<u32>(45u, 0u, 1u))), 30u)], true | global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~14856u, _wgslsmith_add_u32(u_input.b, u_input.a)), 31u)]), !select(vec2<bool>(global1.x, true), !select(vec2<bool>(global1.x, true), vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 31u)], false), vec2<bool>(false, global2[_wgslsmith_index_u32(1u, 30u)])), u_input.d != global0[_wgslsmith_index_u32(~1u, 2u)]), !(!all(select(vec3<bool>(global1.x, true, true), vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.c.x, 30u)], global3[_wgslsmith_index_u32(u_input.a, 31u)]), global3[_wgslsmith_index_u32(u_input.b, 31u)]))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + -1958f), var_0.x)), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) * _wgslsmith_f_op_f32(ceil(var_0.x)))));
    return _wgslsmith_f_op_f32(-var_1.x);
}

fn func_1() -> bool {
    return -338f != _wgslsmith_f_op_f32(func_2());
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 2>();
    global3 = array<bool, 31>();
    global1 = !vec2<bool>(any(vec2<bool>(func_1(), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, u_input.c.x, u_input.a), 31u)])), true);
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(770f, 1000f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1075f, 261f))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1021f, 341f), vec2<f32>(1f, 1f), select(global1.x, global2[_wgslsmith_index_u32(u_input.c.x, 30u)], global3[_wgslsmith_index_u32(u_input.c.x, 31u)]))))) - vec2<f32>(1672f, 318f)) - vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -640f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))))));
    let var_1 = vec3<bool>(true, u_input.d >= ~(-(u_input.d & global0[_wgslsmith_index_u32(u_input.c.x, 2u)])), (_wgslsmith_clamp_u32(~u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(43158u, 1u), vec2<u32>(u_input.a, 0u)), ~u_input.a) <= 9407u) == (_wgslsmith_f_op_f32(-2083f * var_0.x) == _wgslsmith_f_op_f32(-1159f * _wgslsmith_f_op_f32(var_0.x + 653f))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, ~19492u);
}

