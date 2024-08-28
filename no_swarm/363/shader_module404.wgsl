struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: Struct_3,
    d: vec4<bool>,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: u32 = 67924u;

var<private> global2: array<Struct_3, 22>;

var<private> global3: Struct_1;

var<private> global4: u32;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2() -> u32 {
    global1 = 89148u;
    var var_0 = -1i;
    var var_1 = Struct_5(!vec4<bool>(_wgslsmith_mult_i32(46013i, -1i) == select(global3.a, 1i, false), true, -1035f != _wgslsmith_f_op_f32(-1000f + global3.b.x), true));
    let var_2 = 10309u;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global3.b.x, -528f))) + _wgslsmith_f_op_f32(max(global3.b.x, -2348f))), Struct_1(-global3.a, global3.b));
    return var_2;
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = select(vec2<bool>(true, (_wgslsmith_f_op_f32(global3.b.x - -198f) < _wgslsmith_f_op_f32(-global3.b.x)) & !any(vec2<bool>(true, true))), select(vec2<bool>(true, true), vec2<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true))), true), false), global3.b.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(909f * 1831f))));
    var var_1 = Struct_4(select(vec2<bool>(true, var_0.x), !(!var_0), vec2<bool>(!(!var_0.x), var_0.x)), _wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(1u, ~1u)), ~(~vec2<u32>(31700u, 4294967295u)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(0u, 1u)) % vec2<u32>(32u))), Struct_3(false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1153f, global3.b.x, global3.b.x))))), vec4<bool>(var_0.x, ~(-66049i) == ~firstTrailingBit(global3.a), any(vec4<bool>(true, var_0.x, true, true)), !all(select(vec4<bool>(false, var_0.x, false, true), vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(var_0.x, var_0.x, var_0.x, true)))));
    var var_2 = true;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c.b.x, -978f)))), Struct_1(abs(-(global3.a | u_input.c.x)), _wgslsmith_div_vec2_f32(var_1.c.b.zz, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(global3.b - var_1.c.b.xz), _wgslsmith_f_op_vec2_f32(global3.b - vec2<f32>(global3.b.x, 1379f)))))));
    var_2 = all(var_1.d);
    return var_1.b.x >> (var_1.b.x % 32u);
}

fn func_1() -> vec2<f32> {
    var var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(~func_2(), min(min(_wgslsmith_clamp_u32(8698u, 4294967295u, 4294967295u), 1u), ~52382u)), 22u)];
    let var_1 = var_0.a;
    global4 = 10114u;
    var var_2 = vec4<u32>(~(max(~49734u, max(4294967295u, 10799u)) | ~select(0u, 0u, false)), 1u, 1u, 33326u);
    global4 = ~_wgslsmith_div_u32(func_3(0i), _wgslsmith_dot_vec2_u32(~var_2.yx, ~firstTrailingBit(vec2<u32>(1u, var_2.x))));
    return global3.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global3.a, _wgslsmith_f_op_vec2_f32(-global3.b));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.b + _wgslsmith_f_op_vec2_f32(global3.b - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-854f, global3.b.x)), _wgslsmith_f_op_vec2_f32(-var_0.b)))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_1()))));
    global4 = _wgslsmith_clamp_u32(countOneBits(_wgslsmith_mult_u32(1u, select(_wgslsmith_add_u32(0u, 23311u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 13850u, 60781u), vec3<u32>(94175u, 1u, 0u)), true))), firstTrailingBit(firstTrailingBit(~_wgslsmith_div_u32(27641u, 18639u))), func_3(_wgslsmith_sub_i32(2147483647i, _wgslsmith_mult_i32(-35522i, u_input.b))));
    var var_2 = _wgslsmith_clamp_u32(reverseBits(max(_wgslsmith_mod_u32(1u, 4294967295u), select(11137u, 41811u, false))) & ~firstLeadingBit(firstLeadingBit(34026u)), firstTrailingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(61484u, 27952u)) | 1u), func_3(~global3.a));
    var_2 = ~countOneBits(countOneBits(func_3(-1i)));
    var var_3 = Struct_1(global3.a, global3.b);
    var var_4 = _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(1i, 15660i), _wgslsmith_div_i32(44610i, global3.a), -var_0.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 2147483647i, 27205i, global3.a), vec4<i32>(u_input.c.x, global3.a, -12524i, 1i))), ~_wgslsmith_add_vec4_i32(vec4<i32>(-1i, -10911i, var_3.a, u_input.c.x), vec4<i32>(u_input.b, 22786i, 43261i, var_3.a))) & _wgslsmith_dot_vec2_i32(abs(min(vec2<i32>(2147483647i, 1i), vec2<i32>(var_0.a, global3.a))), ~u_input.c), _wgslsmith_dot_vec2_i32(vec2<i32>(~(-62871i), _wgslsmith_clamp_i32(var_3.a, global3.a, var_0.a) | ~1i), ~vec2<i32>(u_input.b, ~var_0.a)));
    let var_5 = Struct_1(i32(-1i) * -1i, _wgslsmith_f_op_vec2_f32(-global3.b));
    let var_6 = all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(false, false, true)), true)), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(~var_0.a, _wgslsmith_mult_i32(2147483647i, 0i)), abs(vec4<u32>(reverseBits(4294967295u), abs(1u), 1u, ~816u)), -1i);
}

