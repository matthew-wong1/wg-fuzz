struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29>;

var<private> global1: Struct_4 = Struct_4(-1945f);

var<private> global2: array<vec4<f32>, 17>;

var<private> global3: f32 = 292f;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: vec4<bool>) -> vec2<f32> {
    global2 = array<vec4<f32>, 17>();
    var var_0 = _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(2333i, abs(39883i), 1i, u_input.b.x), vec4<i32>(26212i, _wgslsmith_mult_i32(u_input.b.x, u_input.b.x), 48077i, -u_input.b.x) & (~vec4<i32>(0i, 2147483647i, 33071i, 45566i) & select(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, 1i, -20524i), arg_1))), -countOneBits(firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, 8848i, 0i, u_input.b.x), vec4<i32>(-30574i, 0i, 1i, 5461i)))));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a, global1.a) - _wgslsmith_f_op_f32(step(global1.a, global1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -467f)))))));
    global2 = array<vec4<f32>, 17>();
    global1 = Struct_4(_wgslsmith_f_op_f32(min(-589f, _wgslsmith_f_op_f32(-1f))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global1.a), -1573f)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-754f, -402f), vec2<f32>(global1.a, var_1.a), vec2<bool>(arg_1.x, arg_2.x))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.a, var_1.a), vec2<f32>(arg_0.a, 1623f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, global1.a)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, 1163f) - vec2<f32>(arg_0.a, arg_0.a)))));
}

fn func_4(arg_0: f32, arg_1: vec2<f32>, arg_2: i32, arg_3: f32) -> u32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(sign(global1.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(2430f)))), _wgslsmith_f_op_f32(ceil(-1232f)), -1290f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1488f * -593f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - 1182f))), Struct_2(~(~1u)));
    var var_1 = Struct_5(Struct_1(false, ~min(var_0.c.a, var_0.c.a)), Struct_1(true, ~_wgslsmith_dot_vec2_u32(u_input.c.wy, u_input.c.zy | vec2<u32>(u_input.a.x, 67269u))), select(false, !all(vec2<bool>(true, false)), arg_2 == ~_wgslsmith_sub_i32(-19436i, 0i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(582f, 225f, 705f, 576f), global2[_wgslsmith_index_u32(u_input.c.x, 17u)], true)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -346f, 1982f, arg_3)))), global2[_wgslsmith_index_u32(~max(4294967295u, var_0.c.a), 17u)])));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.d.yy + vec2<f32>(1f, 1959f)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -619f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(468f + arg_1.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-878f)) - global1.a)) - _wgslsmith_f_op_f32(f32(-1f) * -2451f)));
    var var_4 = var_1.b;
    return u_input.c.x;
}

fn func_2(arg_0: bool, arg_1: i32) -> Struct_5 {
    var var_0 = global0[_wgslsmith_index_u32(~func_4(_wgslsmith_f_op_f32(global1.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.a)))), _wgslsmith_f_op_vec2_f32(func_3(Struct_4(_wgslsmith_f_op_f32(sign(1000f))), !(!vec4<bool>(arg_0, arg_0, arg_0, true)), select(select(vec4<bool>(arg_0, true, true, true), vec4<bool>(arg_0, false, arg_0, true), arg_0), !vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(true, false, false, arg_0)))), u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f * -285f))))), 29u)];
    global0 = array<Struct_2, 29>();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(780f, 893f, global1.a) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, global1.a, global1.a))))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a * _wgslsmith_f_op_f32(round(global1.a))) + _wgslsmith_f_op_f32(f32(-1f) * -1658f)), global1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-283f, global1.a) + global1.a), -696f)));
    var var_2 = vec4<bool>(true, (9903u | var_0.a) < ~(~min(13702u, u_input.a.x)), true, arg_0);
    global1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)) * _wgslsmith_f_op_vec2_f32(func_3(Struct_4(1535f), select(select(vec4<bool>(arg_0, true, arg_0, false), vec4<bool>(false, var_2.x, var_2.x, arg_0), true), !vec4<bool>(true, true, arg_0, true), !vec4<bool>(var_2.x, true, true, var_2.x)), select(vec4<bool>(true, arg_0, arg_0, false), vec4<bool>(false, arg_0, arg_0, var_2.x), !vec4<bool>(arg_0, arg_0, true, true)))).x));
    return Struct_5(Struct_1((any(vec2<bool>(false, arg_0)) | var_2.x) & any(vec2<bool>(true, true)), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~u_input.c.zz, ~u_input.c.yy), ~(~11608u))), Struct_1(arg_0, _wgslsmith_div_u32(var_0.a, u_input.a.x)), arg_0, vec4<f32>(1016f, _wgslsmith_f_op_f32(floor(-731f)), 1601f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + global1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.a)) - 952f), any(!var_2.xzx)))));
}

fn func_1(arg_0: u32) -> Struct_4 {
    global2 = array<vec4<f32>, 17>();
    let var_0 = func_2(0u <= arg_0, _wgslsmith_sub_i32(u_input.b.x, reverseBits(-u_input.b.x >> (21882u % 32u))));
    let var_1 = i32(-1i) * -1i;
    var var_2 = func_2(func_2(var_0.b.a, 1i).b.a, -45426i).b;
    global1 = Struct_4(var_0.d.x);
    return Struct_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-1061f, -441f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.d.x, _wgslsmith_f_op_f32(floor(-1239f))))), ~arg_0 <= 1564u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(44769u);
    var var_0 = Struct_1(true, 19746u);
    global1 = Struct_4(_wgslsmith_f_op_f32(min(global1.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a * global1.a) + _wgslsmith_f_op_f32(min(global1.a, global1.a))))))));
    let var_1 = Struct_5(func_2(any(vec2<bool>(true, true)), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(0i, -32962i, -41458i), min(-37008i, u_input.b.x), -1i) | _wgslsmith_mod_i32(40558i, -2147483647i)).b, Struct_1(true, var_0.b), u_input.a.x != var_0.b, vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global1.a, global1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(153f - _wgslsmith_f_op_f32(548f * 1896f)) - _wgslsmith_f_op_f32(func_2(true, 1i).d.x * _wgslsmith_f_op_f32(global1.a * global1.a))), -428f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a))));
    let var_2 = Struct_1(var_1.b.a, ~(~(~func_2(true, u_input.b.x).a.b)));
    let x = u_input.a;
    s_output = StorageBuffer(~select(u_input.a, ~u_input.a, true), u_input.a.yy ^ firstLeadingBit(u_input.c.zy), countOneBits(-firstTrailingBit(reverseBits(-14964i))));
}

