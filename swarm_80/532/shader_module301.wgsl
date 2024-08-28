struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
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

var<private> global0: f32 = -226f;

var<private> global1: f32 = -216f;

var<private> global2: array<Struct_1, 16>;

var<private> global3: array<u32, 18>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-684f, -1415f) - _wgslsmith_f_op_f32(860f + -764f)))), 744f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-549f, 1150f, 878f, -117f)) + vec4<f32>(-215f, _wgslsmith_f_op_f32(838f - 192f), _wgslsmith_f_op_f32(-1000f + -1000f), _wgslsmith_f_op_f32(round(349f)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(601f, -699f, 594f, 397f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1336f, -2382f, -470f, -1600f)), true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1645f, 136f, -2180f, 930f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1652f, 532f, 374f, 788f))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), u_input.b.x);
    global3 = array<u32, 18>();
    let var_1 = global2[_wgslsmith_index_u32((countOneBits(var_0.d) << (~(~var_0.d) % 32u)) << (var_0.d % 32u), 16u)];
    global0 = _wgslsmith_f_op_f32(772f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x + _wgslsmith_f_op_f32(2072f + 673f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.b.x + 710f), 1896f)))));
    var_0 = global2[_wgslsmith_index_u32(firstTrailingBit(~_wgslsmith_add_u32(select(u_input.b.x << (u_input.b.x % 32u), 4294967295u, true), ~u_input.b.x)), 16u)];
    return var_1.b.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: i32, arg_3: vec4<u32>) -> vec3<bool> {
    var var_0 = global2[_wgslsmith_index_u32(115010u, 16u)];
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-663f + _wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(-var_0.a)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1291f, _wgslsmith_f_op_f32(996f - var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(293f, var_0.b.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3()), -444f, true))), var_0.c)), _wgslsmith_f_op_vec4_f32(-var_0.c), 124780u);
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_1.b.x)), _wgslsmith_f_op_f32(-538f - 116f))), 1f)), var_0.a));
    var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1201f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1430f * var_1.b.x) - _wgslsmith_f_op_f32(exp2(var_1.a))), _wgslsmith_f_op_f32(-var_1.c.x), var_1.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.c.x)), _wgslsmith_f_op_f32(-var_0.a))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-348f, var_1.b.x, -454f, var_1.b.x), var_0.c)))))), _wgslsmith_f_op_vec4_f32(var_0.b - vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_1.a, var_1.b.x)))), 980f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1113f)) - -879f), var_1.c.x)), ~9296u);
    var var_2 = _wgslsmith_f_op_vec2_f32(select(var_0.b.xw, var_1.b.xz, false));
    return select(vec3<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), any(vec2<bool>(all(vec3<bool>(false, false, false)), true)), false), vec3<bool>(true, true, true), all(vec4<bool>((-831f > var_2.x) && true, any(vec4<bool>(false, true, true, false)) || false, false, false)));
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: vec2<u32>, arg_3: vec3<bool>) -> f32 {
    global1 = -1175f;
    let var_0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3458f))), 292f)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -199f)), 769f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-1262f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -256f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-982f, 149f, 298f, -2348f), vec4<f32>(-380f, 1739f, 1501f, 1592f))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-2171f, -1878f, 1797f, -457f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-415f, -2348f, 821f, 1603f))))), vec4<f32>(_wgslsmith_f_op_f32(trunc(238f)), -636f, _wgslsmith_div_f32(_wgslsmith_div_f32(-1536f, _wgslsmith_f_op_f32(ceil(1227f))), _wgslsmith_f_op_f32(-892f - -399f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -547f) - 780f)), _wgslsmith_sub_u32(0u << (1u % 32u), u_input.b.x));
    var var_1 = -1243f;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x + -737f) - _wgslsmith_f_op_f32(step(932f, var_0.c.x))), -1145f)), _wgslsmith_f_op_f32(-var_0.b.x))), var_0.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b))), ~46668u);
    global3 = array<u32, 18>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: bool, arg_3: u32) -> u32 {
    var var_0 = u_input.a.x;
    global0 = 1192f;
    let var_1 = select(!vec3<bool>(!(arg_2 & arg_2), !arg_2, true), !vec3<bool>(arg_2 | arg_2, true, false), false);
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(376f)), _wgslsmith_f_op_f32(func_4(true, 69671u, u_input.b.zx, select(select(var_1, vec3<bool>(false, true, arg_0.x), var_1), var_1, func_2(vec3<i32>(-19877i, 0i, u_input.a.x), global3[_wgslsmith_index_u32(1u, 18u)], u_input.a.x, vec4<u32>(global3[_wgslsmith_index_u32(arg_3, 18u)], 4294967295u, 52236u, 26548u))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-241f * _wgslsmith_f_op_f32(func_4(true, arg_3, u_input.b.xy, var_1))))) * _wgslsmith_f_op_f32(489f - _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    global3 = array<u32, 18>();
    return firstTrailingBit(0u) >> (u_input.b.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~func_1(select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), true), _wgslsmith_div_vec2_i32(u_input.a.yx, vec2<i32>(u_input.a.x, -2436i)) | vec2<i32>(18443i, u_input.a.x), false, _wgslsmith_mult_u32(~global3[_wgslsmith_index_u32(u_input.b.x, 18u)], u_input.b.x << (1u % 32u))));
    let var_1 = Struct_1(583f, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-320f, 446f, 168f, -665f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-270f, -858f, 306f, 656f)))))), vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1549f, 1317f))), -336f, _wgslsmith_f_op_f32(func_3())), countOneBits(1u));
    var var_2 = -vec4<i32>(u_input.a.x, _wgslsmith_add_i32(-79491i, _wgslsmith_mod_i32(-1i, u_input.a.x)), 0i, countOneBits(-u_input.a.x));
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, 35009u, ~global3[_wgslsmith_index_u32(u_input.b.x, 18u)]), _wgslsmith_mult_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(35068u, 18u)] << (4294967295u % 32u), 18u)] ^ ~var_1.d, 25669u)), 16u)];
    global1 = _wgslsmith_f_op_f32(493f + _wgslsmith_f_op_f32(f32(-1f) * -232f));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_mult_i32(firstTrailingBit(u_input.a.x | u_input.a.x), select(_wgslsmith_dot_vec2_i32(var_2.wy, var_2.wx), select(0i, u_input.a.x, true), false)), -42121i, 0i, ~51232i), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-170f, _wgslsmith_f_op_f32(var_3.a * var_3.a)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_3.b.x * var_3.b.x))))), var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3()))))), 1u);
}

