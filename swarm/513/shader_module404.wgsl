struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: Struct_2,
    d: i32,
    e: vec3<bool>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30>;

var<private> global1: vec4<f32> = vec4<f32>(983f, -1505f, 312f, -1164f);

var<private> global2: array<Struct_1, 26>;

var<private> global3: vec4<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + 487f) * -679f) - -1000f)));
    var var_1 = -firstLeadingBit(21117i);
    let var_2 = Struct_2(!global0[_wgslsmith_index_u32(u_input.a, 30u)] & !any(select(vec4<bool>(global0[_wgslsmith_index_u32(57986u, 30u)], global3.x, false, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 30u)], global3.x, global3.x, true), false)), true, global2[_wgslsmith_index_u32(countOneBits(firstTrailingBit(14728u)), 26u)]);
    var var_3 = global1.x;
    var_0 = _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(max(-275f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1507f * arg_0) * arg_0))));
    return _wgslsmith_f_op_f32(f32(-1f) * -2093f);
}

fn func_2(arg_0: vec3<i32>, arg_1: i32) -> f32 {
    global2 = array<Struct_1, 26>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(abs(-1570f))))), _wgslsmith_f_op_f32(398f + global1.x), _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(746f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.x)) - global1.x), true))));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(global1.ywx, vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(117f + -627f)) - 1704f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-543f * var_0.x) * _wgslsmith_f_op_f32(-global1.x))))), global3.x));
    var var_2 = Struct_5(~u_input.a);
    var var_3 = Struct_3(Struct_2(true, global0[_wgslsmith_index_u32(u_input.a, 30u)], Struct_1(vec4<bool>(true, global3.x, global3.x, -2147483647i == u_input.b.x), !global3.xyx, u_input.b.x)), vec4<f32>(-826f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_1.x) + _wgslsmith_f_op_f32(var_0.x * -1461f)))), var_0.x, var_0.x), Struct_2(false, true, global2[_wgslsmith_index_u32(0u, 26u)]), -(arg_1 & ~(-10965i)), !global3.zwy);
    return _wgslsmith_f_op_f32(2084f - _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b.x + 2001f))))));
}

fn func_1(arg_0: vec3<u32>) -> Struct_2 {
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1348f, _wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(-1967f - 160f), global1.x), vec4<f32>(global1.x, _wgslsmith_div_f32(650f, _wgslsmith_f_op_f32(min(1124f, -289f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - global1.x)), -1040f), global3.x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, -419f, -628f) - vec4<f32>(global1.x, global1.x, 112f, global1.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.x, global1.x, global1.x, global1.x))) + vec4<f32>(global1.x, global1.x, 951f, 696f)))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + 802f) * 119f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1803f) + _wgslsmith_f_op_f32(sign(global1.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.x))), 372f)));
    global1 = vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(func_2(-vec3<i32>(~15156i, _wgslsmith_sub_i32(u_input.b.x, u_input.b.x), -16128i), 10075i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(-global1.x)))), global1.x);
    global1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.x, -368f, global1.x, _wgslsmith_f_op_f32(floor(global1.x))))), vec4<f32>(1231f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.x))) + global1.x), _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(floor(-639f)))), -604f));
    global2 = array<Struct_1, 26>();
    global3 = vec4<bool>(global0[_wgslsmith_index_u32(select(arg_0.x, arg_0.x, true) | ~61473u, 30u)], true, !select(any(global3.yw), false, any(global3.wzy)), global0[_wgslsmith_index_u32(1u, 30u)]);
    return Struct_2(!(_wgslsmith_f_op_f32(-global1.x) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1168f + 542f) + _wgslsmith_f_op_f32(-global1.x))), global0[_wgslsmith_index_u32(8406u << (u_input.a % 32u), 30u)], global2[_wgslsmith_index_u32(firstLeadingBit(1u) << (arg_0.x % 32u), 26u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.x;
    var var_1 = func_1(~_wgslsmith_div_vec3_u32((vec3<u32>(75380u, 1u, u_input.a) | vec3<u32>(u_input.a, 38692u, 72131u)) ^ (vec3<u32>(44524u, 0u, u_input.a) << (vec3<u32>(u_input.a, u_input.a, 5746u) % vec3<u32>(32u))), min(~vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(14618u, u_input.a, u_input.a) | vec3<u32>(34334u, u_input.a, 27547u))));
    let var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -720f, _wgslsmith_f_op_f32(global1.x + -304f), _wgslsmith_f_op_f32(-457f - _wgslsmith_f_op_f32(197f - -225f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global1.x, global1.x, global1.x) + vec4<f32>(407f, global1.x, -634f, -1927f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1014f, global1.x, global1.x, global1.x))))) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(359f, 433f, global1.x, -101f), vec4<f32>(global1.x, global1.x, -471f, 552f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -419f, -1447f, global1.x) - vec4<f32>(global1.x, -1000f, 1014f, global1.x)))))));
    global1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2) * var_2) - vec4<f32>(var_2.x, var_2.x, var_2.x, -1352f)) - vec4<f32>(global1.x, 361f, global1.x, global1.x)), _wgslsmith_div_vec4_f32(var_2, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1248f), _wgslsmith_f_op_f32(f32(-1f) * -787f), 574f, _wgslsmith_f_op_f32(abs(var_2.x))) * _wgslsmith_f_op_vec4_f32(var_2 * _wgslsmith_f_op_vec4_f32(var_2 - var_2)))));
    global1 = _wgslsmith_f_op_vec4_f32(var_2 - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-386f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -213f) + 905f), 387f, global1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 1i, 21055i), abs(vec3<i32>(var_1.c.c, var_1.c.c, -5284i))), abs(1i)));
}

