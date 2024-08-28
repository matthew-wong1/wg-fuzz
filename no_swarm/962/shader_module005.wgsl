struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: f32,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 42770u, 29645u);

var<private> global1: vec2<f32> = vec2<f32>(-467f, 611f);

var<private> global2: vec4<f32> = vec4<f32>(340f, -1183f, -553f, -706f);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec2<u32>) -> vec4<i32> {
    let var_0 = select(~_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, u_input.c, u_input.c), vec3<i32>(u_input.c, 2147483647i, -70064i)), min(vec3<i32>(u_input.a.x, u_input.a.x, u_input.e), vec3<i32>(u_input.c, u_input.c, -2147483647i))), ~_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, u_input.e, u_input.c), vec3<i32>(u_input.a.x, -1i, -2147483647i)), vec3<i32>(-41863i, u_input.e, -1i)), any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true))) << (~vec3<u32>(arg_0.x, max(_wgslsmith_sub_u32(global0.x, 0u), u_input.b), 4294967295u) % vec3<u32>(32u));
    let var_1 = Struct_4(select(vec2<bool>(true || all(vec3<bool>(false, false, true)), !(0u != global0.x)), vec2<bool>(max(u_input.c, var_0.x) >= select(0i, 1i, false), select(true, true, true)), true), -584f);
    let var_2 = u_input.d;
    var var_3 = 2506f;
    let var_4 = _wgslsmith_sub_vec3_u32(firstTrailingBit(countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(18152u, global0.x, 54339u), ~vec3<u32>(arg_0.x, arg_0.x, 35883u)))), ~firstLeadingBit(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.x, global0.x, var_2), vec3<u32>(56296u, 80389u, var_2)))));
    return vec4<i32>(~(-2147483647i), select(_wgslsmith_dot_vec3_i32(abs(firstTrailingBit(var_0)), _wgslsmith_div_vec3_i32(vec3<i32>(var_0.x, u_input.e, u_input.a.x) >> (vec3<u32>(var_4.x, 1u, 64598u) % vec3<u32>(32u)), vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i))), _wgslsmith_mult_i32(u_input.a.x, var_0.x), _wgslsmith_f_op_f32(-692f - 698f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b))), -1i >> (u_input.d % 32u), _wgslsmith_mod_i32(21964i, -(min(1i, -12552i) >> (~global0.x % 32u))));
}

fn func_2() -> vec4<i32> {
    var var_0 = vec3<bool>(true, _wgslsmith_add_u32(~u_input.b, 23865u & max(global0.x, 23387u)) == ~4294967295u, false);
    var var_1 = u_input.d;
    let var_2 = -788f;
    let var_3 = u_input.c;
    var var_4 = 32243i;
    return _wgslsmith_add_vec4_i32(~vec4<i32>(-48592i, 1i, ~(-13411i), _wgslsmith_add_i32(var_3, u_input.e)) | ~func_3(select(global0.xx, vec2<u32>(0u, global0.x), vec2<bool>(true, false))), _wgslsmith_mod_vec4_i32(-(~vec4<i32>(var_3, u_input.a.x, -17400i, u_input.a.x)), -(~vec4<i32>(2147483647i, 40157i, u_input.e, 0i))) & _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, var_3, u_input.e, u_input.e), vec4<i32>(var_3, var_3, u_input.c, 1i)) | vec4<i32>(-30026i, u_input.a.x, u_input.a.x, 15509i), select(vec4<i32>(-2147483647i, -1i, u_input.a.x, var_3), -vec4<i32>(var_3, 1i, -1i, var_3), true)));
}

fn func_1(arg_0: f32) -> Struct_3 {
    global2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-214f, 848f, global1.x, global2.x) * vec4<f32>(global2.x, 930f, global2.x, arg_0)) - vec4<f32>(-2549f, global2.x, -1000f, 725f))))))));
    let var_0 = func_2();
    global1 = global2.wz;
    var var_1 = _wgslsmith_clamp_vec2_i32(abs(abs(vec2<i32>(35421i, u_input.c) & vec2<i32>(u_input.c, var_0.x)) ^ ~(var_0.ww | var_0.xx)), u_input.a, vec2<i32>(-countOneBits(firstLeadingBit(68298i)), u_input.c));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1488f, global1.x) * arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.x))) - 229f), _wgslsmith_f_op_f32(exp2(global1.x))) + _wgslsmith_f_op_vec3_f32(global2.wyy + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-467f, _wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_f32(sign(global1.x)))))));
    return Struct_3(Struct_1(global0.yx, vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(global2.x, 1471f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.x, var_2.x, false))), _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(trunc(var_2.x))), arg_0), vec4<f32>(arg_0, global2.x, _wgslsmith_f_op_f32(1395f - _wgslsmith_f_op_f32(max(global2.x, -399f))), -471f), all(vec3<bool>(true, false, false))), Struct_1(~global0.yy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, -1634f, 1821f, var_2.x) - vec4<f32>(-2189f, 456f, global2.x, 112f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 797f, -686f, var_2.x)), vec4<bool>(true, true, true, true)))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-794f + 457f), _wgslsmith_f_op_f32(arg_0 - -737f), _wgslsmith_div_f32(-550f, -1144f), var_2.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, 373f, 1182f, global2.x) * vec4<f32>(global2.x, global1.x, global2.x, -1448f)))), !(_wgslsmith_f_op_f32(abs(var_2.x)) < _wgslsmith_f_op_f32(step(617f, global2.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(any(!(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), false))), all(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), true), false)));
    let var_1 = func_1(global1.x);
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1511f - -1097f) * _wgslsmith_f_op_f32(-1022f * _wgslsmith_f_op_f32(trunc(230f)))), global1.x));
    var_0 = vec2<bool>(false || select(all(select(vec4<bool>(false, false, var_1.a.d, false), vec4<bool>(var_0.x, true, var_1.b.d, var_1.b.d), true)), (1000f <= var_1.a.b.x) | true, func_1(var_1.b.b.x).a.d), !var_1.a.d);
    let x = u_input.a;
    s_output = StorageBuffer(max(vec4<i32>(_wgslsmith_add_i32(-1i, -30094i), min(-25044i, _wgslsmith_add_i32(u_input.a.x, 0i)), 55749i, 78384i), ~vec4<i32>(48471i, 2147483647i, 0i, u_input.e) << (vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, u_input.b), vec2<u32>(82828u, 1u)), var_1.a.a.x, ~var_1.b.a.x, 1u) % vec4<u32>(32u))), 75575u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_f_op_f32(-var_1.a.b.x)) * var_1.b.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x * global2.x), global1.x), 1392f), global1.x);
}

