struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(224f, -116f, 345f, -1000f);

var<private> global1: array<Struct_1, 18>;

var<private> global2: u32;

var<private> global3: vec4<u32>;

var<private> global4: array<vec4<f32>, 17> = array<vec4<f32>, 17>(vec4<f32>(946f, -1508f, -329f, 2750f), vec4<f32>(-602f, 1415f, 152f, 540f), vec4<f32>(635f, 1266f, 477f, -525f), vec4<f32>(-374f, 1000f, -221f, -1097f), vec4<f32>(-413f, 142f, -1189f, -2706f), vec4<f32>(493f, -2243f, -1000f, -267f), vec4<f32>(-1444f, 118f, -427f, -638f), vec4<f32>(-797f, -1790f, -1824f, 218f), vec4<f32>(-673f, 1000f, -997f, -854f), vec4<f32>(2565f, 195f, -1532f, 1605f), vec4<f32>(759f, 1235f, 657f, -621f), vec4<f32>(-1000f, 2367f, 609f, -1000f), vec4<f32>(-1406f, 343f, -1415f, -732f), vec4<f32>(-405f, 637f, 230f, 1538f), vec4<f32>(-829f, -497f, 827f, 914f), vec4<f32>(-1054f, 735f, 901f, -277f), vec4<f32>(2619f, 1242f, -1706f, -1766f));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>) -> i32 {
    var var_0 = vec4<i32>(-1i, 30836i >> ((119491u | (~4294967295u | ~u_input.a.x)) % 32u), -_wgslsmith_dot_vec3_i32(-vec3<i32>(-5588i, arg_0.a, arg_0.a), vec3<i32>(11090i, u_input.b.x, -2147483647i) | vec3<i32>(u_input.b.x, 20008i, -1i)) << (~_wgslsmith_mod_u32(_wgslsmith_sub_u32(global3.x, global3.x), u_input.a.x) % 32u), 20695i);
    var_0 = ~_wgslsmith_sub_vec4_i32(-vec4<i32>(-1i, 33087i, 1i, max(2147483647i, u_input.b.x)), ~abs(abs(vec4<i32>(-19864i, u_input.b.x, var_0.x, 0i))));
    var var_1 = countOneBits(u_input.a);
    let var_2 = vec3<bool>(all(select(vec3<bool>(true, true, true), select(vec3<bool>(arg_1.x, false, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), false), arg_1.x)) || true, any(select(arg_1, !arg_1, arg_1.x)) | (countOneBits(arg_0.a) > -arg_0.a), true);
    let var_3 = arg_0;
    return -2147483647i;
}

fn func_2(arg_0: vec3<bool>) -> u32 {
    global4 = array<vec4<f32>, 17>();
    global0 = global4[_wgslsmith_index_u32(15381u, 17u)];
    let var_0 = vec3<i32>(~func_3(Struct_2(1i), !vec2<bool>(arg_0.x, arg_0.x)), -14081i, 1i);
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(629f, global0.x, -2185f, global0.x))) * vec4<f32>(881f, -734f, _wgslsmith_f_op_f32(f32(-1f) * -395f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) * _wgslsmith_f_op_f32(sign(global0.x))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(global4[_wgslsmith_index_u32(reverseBits(u_input.a.x), 17u)], _wgslsmith_f_op_vec4_f32(-global4[_wgslsmith_index_u32(~14930u, 17u)]))), global4[_wgslsmith_index_u32(u_input.a.x, 17u)], (var_0.x >> (abs(u_input.a.x) % 32u)) == ~u_input.b.x)), true));
    let var_1 = Struct_2(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(-1i, 0i, -2147483647i) ^ 1i, func_3(Struct_2(-1i), !vec2<bool>(arg_0.x, arg_0.x))));
    return firstTrailingBit(_wgslsmith_add_u32(global3.x, _wgslsmith_dot_vec3_u32(u_input.a.yzx << (vec3<u32>(global3.x, 30755u, 8799u) % vec3<u32>(32u)), ~global3.yyy) ^ _wgslsmith_clamp_u32(61680u, u_input.a.x, ~1u)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: bool) -> f32 {
    let var_0 = all(!(!vec4<bool>(any(vec2<bool>(false, arg_1.x)), global3.x != arg_0.c, false, false)));
    var var_1 = _wgslsmith_add_vec2_u32(select(vec2<u32>(arg_0.b, 1u), ~_wgslsmith_mult_vec2_u32(u_input.a.xy, global3.wx), true), min(~vec2<u32>(4294967295u, 0u), global3.zw ^ reverseBits(vec2<u32>(global3.x, 4294967295u)))) >> (vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(1u, u_input.a.x << (14528u % 32u)), 24470u), global3.x) % vec2<u32>(32u));
    var var_2 = vec3<bool>(1u != global3.x, false, !(global0.x > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.d.x + global0.x)))));
    let var_3 = _wgslsmith_clamp_i32(~reverseBits(2147483647i) ^ u_input.b.x, 24071i, u_input.b.x);
    global4 = array<vec4<f32>, 17>();
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - -1438f)));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> u32 {
    var var_0 = Struct_2(max(_wgslsmith_mult_i32(_wgslsmith_div_i32(42652i, arg_3), i32(-1i) * -arg_3), _wgslsmith_add_i32(-72431i >> (arg_1.c % 32u), -26659i)));
    var var_1 = Struct_2(0i);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -984f)) + _wgslsmith_f_op_f32(-368f + _wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(1464f * arg_0.x))))), _wgslsmith_f_op_f32(func_4(global1[_wgslsmith_index_u32(func_2(vec3<bool>(true, true, true)), 18u)], vec2<bool>(_wgslsmith_f_op_f32(global0.x + arg_2.d.x) > _wgslsmith_f_op_f32(-arg_2.d.x), true && any(vec4<bool>(false, true, false, false))), true)), 473f, _wgslsmith_f_op_f32(f32(-1f) * -546f));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(arg_2.d.x)), -569f)));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, _wgslsmith_div_f32(-514f, -430f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(var_2.x * -999f)) - _wgslsmith_div_f32(-306f, arg_2.d.x))), _wgslsmith_f_op_f32(arg_0.x - var_2.x), _wgslsmith_f_op_f32(exp2(arg_1.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1675f + arg_1.d.x) * 652f)) * var_3));
    return ~(~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(u_input.a, countOneBits(u_input.a)), abs(u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec2_u32(min(~vec2<u32>(global3.x, 1u), vec2<u32>(func_1(vec3<f32>(-724f, -2163f, global0.x), Struct_1(84111i, global3.x, global3.x, global0.wx), global1[_wgslsmith_index_u32(u_input.a.x, 18u)], u_input.b.x), global3.x)) >> (global3.xy % vec2<u32>(32u)), ~(~(select(global3.yy, vec2<u32>(u_input.a.x, u_input.a.x), true) | _wgslsmith_mod_vec2_u32(vec2<u32>(101u, 0u), global3.ww))));
    var var_1 = Struct_2(firstTrailingBit(reverseBits(u_input.b.x)));
    var var_2 = -2128f;
    let var_3 = _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-953f, -155f)))));
    global3 = vec4<u32>(~6697u, max(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~u_input.a.wwx, vec3<u32>(1u, var_0.x, var_0.x)), global3.x), firstLeadingBit(11825u)), ~(~var_0.x), ~(~22820u) & ~(global3.x << (min(12080u, global3.x) % 32u)));
    var var_4 = Struct_2(_wgslsmith_clamp_i32(countOneBits(~1i), u_input.b.x, _wgslsmith_mult_i32(1i, 18861i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~_wgslsmith_mult_u32(12383u, _wgslsmith_mult_u32(var_0.x, u_input.a.x)), 1u), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(global1[_wgslsmith_index_u32(1u, 18u)], vec2<bool>(true, false), false)), _wgslsmith_f_op_f32(round(1458f)), true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -211f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_3 - global0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.zwy) * global0.zzz)))), ~11132u, vec4<u32>(~u_input.a.x, ~u_input.a.x, func_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-422f, var_3, -659f), vec3<f32>(var_3, -1000f, global0.x)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, var_3, global0.x))), any(vec4<bool>(false, true, true, false)))), global1[_wgslsmith_index_u32(var_0.x, 18u)], global1[_wgslsmith_index_u32(~1u, 18u)], firstLeadingBit(abs(u_input.b.x))), ~global3.x));
}

