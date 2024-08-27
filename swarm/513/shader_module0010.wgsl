struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 3>;

var<private> global1: bool = false;

var<private> global2: array<i32, 1> = array<i32, 1>(2147483647i);

var<private> global3: array<vec2<u32>, 23>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec4<i32>) -> bool {
    return all(vec4<bool>(true, true, !((65660u & u_input.c.x) <= _wgslsmith_add_u32(u_input.a.x, arg_0.e)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))));
}

fn func_3(arg_0: Struct_2) -> f32 {
    global1 = false;
    var var_0 = vec4<f32>(526f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(344f - arg_0.b.b))), -663f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.b.b, 551f, arg_0.c.x)))))));
    var var_1 = 0u;
    let var_2 = vec3<i32>(-2147483647i, _wgslsmith_mult_i32((global2[_wgslsmith_index_u32(arg_0.b.c, 1u)] >> (arg_0.b.e % 32u)) ^ 0i, global2[_wgslsmith_index_u32(1u, 1u)]) | -2147483647i, 33945i);
    var var_3 = _wgslsmith_f_op_vec3_f32(trunc(var_0.zzw));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + -999f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.x, 1f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(804f * arg_0.x), _wgslsmith_f_op_f32(select(-1000f, arg_0.x, all(vec4<bool>(true, true, false, false)))), 510f, -1602f)));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-679f)), -838f, true)), 1639f, 2841f)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -365f, arg_0.x, 944f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, arg_0.x, 1299f, arg_0.x) + vec4<f32>(-1311f, var_0.x, arg_0.x, 520f))) - vec4<f32>(_wgslsmith_f_op_f32(-842f - -234f), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(arg_0.x + -330f), _wgslsmith_f_op_f32(f32(-1f) * -649f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(vec3<f32>(-509f, var_0.x, var_0.x), Struct_1(vec4<f32>(344f, var_0.x, 3201f, -589f), var_0.x, u_input.c.x, arg_0.x, u_input.a.x), vec4<bool>(false, false, false, false), Struct_1(vec4<f32>(var_0.x, var_0.x, arg_0.x, -384f), 2027f, 74423u, arg_0.x, u_input.a.x), vec4<f32>(-1574f, 292f, var_0.x, var_0.x)))))), min(0u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 48532u, 4294967295u, u_input.a.x), u_input.a)), _wgslsmith_f_op_f32(min(401f, -631f)), ~40730u), vec4<bool>(any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(false, true))), !any(vec3<bool>(true, true, true)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), u_input.a.x < _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 107u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.c.x, 31076u, 35771u)))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-496f, var_0.x) - _wgslsmith_f_op_f32(func_3(Struct_2(vec3<f32>(arg_0.x, var_0.x, var_0.x), Struct_1(vec4<f32>(-547f, arg_0.x, arg_0.x, 120f), arg_0.x, 4294967295u, 567f, u_input.a.x), vec4<bool>(false, true, false, false), Struct_1(vec4<f32>(var_0.x, 1000f, 710f, 1460f), 1797f, 62844u, var_0.x, 1u), vec4<f32>(arg_0.x, -358f, var_0.x, -313f))))), var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_2(vec3<f32>(var_0.x, 404f, -1601f), Struct_1(vec4<f32>(1051f, 508f, arg_0.x, arg_0.x), 1296f, u_input.c.x, 385f, 4294967295u), vec4<bool>(false, true, true, true), Struct_1(vec4<f32>(var_0.x, 488f, 1862f, var_0.x), arg_0.x, 1u, arg_0.x, 57084u), vec4<f32>(1321f, var_0.x, -1000f, var_0.x)))), -105f), var_0.x), 511f, 0u, arg_0.x, u_input.c.x), vec4<f32>(_wgslsmith_f_op_f32(359f + _wgslsmith_f_op_f32(sign(var_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -2127f), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(562f - var_0.x)));
    var var_2 = _wgslsmith_div_f32(-1559f, _wgslsmith_f_op_f32(-119f * _wgslsmith_f_op_f32(ceil(397f))));
    var var_3 = _wgslsmith_dot_vec3_i32(~min(_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(9905i, u_input.b.x, u_input.b.x), u_input.b.yzx), global0[_wgslsmith_index_u32(firstLeadingBit(u_input.c.x), 3u)], _wgslsmith_sub_vec3_i32(u_input.b.zxw, vec3<i32>(u_input.b.x, -22821i, 11954i))), firstLeadingBit(firstTrailingBit(u_input.b.ywx))), -countOneBits(firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, u_input.b.x, -7349i), u_input.b.wzw))));
    global2 = array<i32, 1>();
    return var_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 3>();
    var var_0 = !select(select(vec2<bool>(true, true), vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, false), false)), select(!select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(func_1(Struct_1(vec4<f32>(1562f, 818f, 967f, 166f), 1449f, u_input.c.x, 138f, u_input.c.x), vec2<f32>(-574f, 1376f), vec4<i32>(u_input.b.x, 2147483647i, 2147483647i, u_input.b.x)), all(vec2<bool>(true, true))), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)));
    let var_1 = func_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-526f, 955f, 1882f) + vec3<f32>(-913f, 646f, 313f)), vec3<f32>(-105f, 1302f, -117f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1150f), _wgslsmith_f_op_f32(705f - _wgslsmith_f_op_f32(1197f + -1000f)), -257f), var_0.x)));
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1136f, _wgslsmith_f_op_f32(-var_1.d)) - _wgslsmith_f_op_vec2_f32(-var_1.a.zx)), vec2<f32>(_wgslsmith_f_op_f32(round(-782f)), 398f));
    let var_3 = 37371u;
    let var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(ceil(var_1.a.yyy)), Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, var_1.b, var_1.d, 1000f), var_1.a))))), 2077f, _wgslsmith_add_u32(firstTrailingBit(25434u), ~firstLeadingBit(var_3)), var_2.x, firstTrailingBit(~u_input.c.x)), !select(!select(vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(false, false, var_0.x, false), true), select(!vec4<bool>(true, true, var_0.x, var_0.x), !vec4<bool>(var_0.x, var_0.x, var_0.x, false), false), !any(vec2<bool>(false, true))), var_1, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1014f, var_1.b, _wgslsmith_f_op_f32(step(-344f, 659f)), _wgslsmith_f_op_f32(sign(402f))))));
    let var_5 = func_2(vec3<f32>(_wgslsmith_f_op_f32(ceil(1f)), var_1.d, _wgslsmith_f_op_f32(var_4.d.b - _wgslsmith_f_op_f32(trunc(-1038f)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.xwy);
}

