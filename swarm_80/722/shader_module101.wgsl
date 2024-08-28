struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: f32,
    d: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_1,
    c: f32,
    d: f32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<vec4<u32>, 20>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> u32 {
    global1 = array<vec4<u32>, 20>();
    let var_0 = abs(select(~select(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.b.x, 592u, u_input.a), global1[_wgslsmith_index_u32(u_input.b.x, 20u)]), ~vec4<u32>(1u, u_input.a, 4294967295u, 5446u), select(false, true, true)), ~vec4<u32>(u_input.b.x, select(u_input.b.x, u_input.a, false), _wgslsmith_mult_u32(1u, u_input.a), u_input.a), select(vec4<bool>(any(vec2<bool>(false, false)), true, all(vec4<bool>(true, false, true, true)), false), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), true)));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(global0.x, global0.x), -1000f);
    let var_1 = var_0.xwy;
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.x, global0.x, global0.x))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.x, _wgslsmith_f_op_f32(select(global0.x, global0.x, false)), _wgslsmith_f_op_f32(-global0.x)), vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(min(global0.x, global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -2989f))))));
    return var_0.x;
}

fn func_2(arg_0: Struct_5) -> vec3<bool> {
    global1 = array<vec4<u32>, 20>();
    global1 = array<vec4<u32>, 20>();
    let var_0 = 55856u;
    var var_1 = Struct_4(~(~vec3<u32>(~var_0, func_3(), _wgslsmith_div_u32(6222u, u_input.a))), vec3<i32>(~(~0i), 0i, _wgslsmith_sub_i32(-2147483647i, arg_0.e.x)), _wgslsmith_mult_vec4_u32(max(vec4<u32>(var_0, u_input.a, _wgslsmith_clamp_u32(27217u, 4294967295u, var_0), _wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(2360u, 20u)], vec4<u32>(0u, 1u, u_input.b.x, 1u))), ~(global1[_wgslsmith_index_u32(var_0, 20u)] ^ vec4<u32>(u_input.a, u_input.b.x, 1u, u_input.b.x))), _wgslsmith_clamp_vec4_u32(max(global1[_wgslsmith_index_u32(u_input.b.x, 20u)] << (global1[_wgslsmith_index_u32(1u, 20u)] % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(var_0, 51607u, 12500u, 18410u), global1[_wgslsmith_index_u32(u_input.a, 20u)])), vec4<u32>(var_0, max(u_input.b.x, 4294967295u), firstLeadingBit(1u), u_input.b.x), ~vec4<u32>(4294967295u, u_input.b.x, 23985u, var_0))));
    var var_2 = Struct_2(min(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(var_1.a.zy, firstLeadingBit(vec2<u32>(1u, 24786u))), ~(~vec2<u32>(0u, u_input.b.x))), 107520u), -1i, arg_0.c, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, arg_0.d, global0.x, global0.x), vec4<f32>(global0.x, 102f, arg_0.c, arg_0.c), true))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.d, global0.x, arg_0.d, arg_0.c), vec4<f32>(470f, arg_0.d, -446f, 125f)))))))));
    return select(select(vec3<bool>(true, arg_0.a.x, arg_0.b.a), !(!select(vec3<bool>(arg_0.b.a, true, false), vec3<bool>(true, arg_0.b.a, arg_0.b.a), arg_0.b.a)), var_2.d.x > _wgslsmith_f_op_f32(-2772f * _wgslsmith_f_op_f32(step(1421f, arg_0.d)))), vec3<bool>(true, any(vec4<bool>(all(vec4<bool>(arg_0.a.x, true, arg_0.a.x, true)), true, true, arg_0.a.x)), (-830f >= _wgslsmith_f_op_f32(max(arg_0.c, var_2.d.x))) & arg_0.b.a), vec3<bool>(arg_0.a.x || arg_0.b.a, arg_0.a.x, !(all(vec2<bool>(false, arg_0.b.a)) && false)));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(global0.x - global0.x)))), global0.x), _wgslsmith_f_op_vec2_f32(max(global0.zy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.zy + global0.zy) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(619f, -943f) + global0.yz)))))), vec2<bool>(arg_1.x, arg_1.x)));
    let var_1 = _wgslsmith_dot_vec4_u32(select(abs(countOneBits(vec4<u32>(10467u, 45056u, 1u, 4294967295u))), ~global1[_wgslsmith_index_u32(126233u, 20u)], select(select(vec4<bool>(false, true, true, true), select(vec4<bool>(false, arg_1.x, false, arg_1.x), vec4<bool>(true, arg_1.x, false, arg_1.x), arg_1.x), vec4<bool>(arg_1.x, false, arg_1.x, true)), !select(vec4<bool>(true, arg_1.x, false, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x), vec4<bool>(false, false, true, arg_1.x)), vec4<bool>(true, !arg_1.x, false || arg_1.x, true))), vec4<u32>(~u_input.b.x, func_3(), u_input.a, ~u_input.b.x));
    let var_2 = Struct_4(_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(var_1, var_1 & var_1, abs(u_input.a)), var_1, u_input.b.x), ~(~(~vec3<u32>(4294967295u, 1u, u_input.b.x)))), arg_0, firstTrailingBit(global1[_wgslsmith_index_u32(max(abs(63475u), var_1), 20u)]));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(abs(-1784f)), _wgslsmith_f_op_f32(step(131f, _wgslsmith_f_op_f32(global0.x - global0.x)))))));
    let var_3 = select(arg_1.zx, vec2<bool>(arg_1.x, !(any(arg_1) | !arg_1.x)), !arg_1.yx);
    return _wgslsmith_dot_vec2_u32(var_2.a.yx, max(_wgslsmith_sub_vec2_u32(~(~vec2<u32>(u_input.a, var_2.a.x)), ~vec2<u32>(10074u, 63204u)), _wgslsmith_div_vec2_u32(var_2.c.yy >> (~vec2<u32>(var_1, var_2.c.x) % vec2<u32>(32u)), reverseBits(vec2<u32>(1u, var_1)))));
}

fn func_1(arg_0: bool, arg_1: vec3<i32>, arg_2: u32, arg_3: vec3<u32>) -> vec2<bool> {
    var var_0 = vec2<u32>(~4294967295u, ~(~reverseBits(4294967295u))) >> (vec2<u32>(1u, func_4(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.x, -8430i, 2147483647i), countOneBits(arg_1)), !func_2(Struct_5(vec2<bool>(arg_0, arg_0), Struct_1(true), -1013f, global0.x, arg_1.zy)))) % vec2<u32>(32u));
    let var_1 = var_0.x;
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(round(global0.x)))))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1052f, 909f, global0.x) - vec3<f32>(global0.x, global0.x, global0.x)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(925f, -641f, global0.x), vec3<f32>(2081f, 1612f, global0.x)))))))));
    var var_2 = Struct_5(vec2<bool>(firstTrailingBit(-2147483647i) == arg_1.x, any(vec2<bool>(!arg_0, true))), Struct_1(arg_2 != max(~var_0.x, max(3336u, arg_3.x))), _wgslsmith_f_op_f32(global0.x - -1250f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1282f - -1459f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(564f, _wgslsmith_div_f32(global0.x, global0.x))), _wgslsmith_f_op_f32(f32(-1f) * -1425f)))), select(arg_1.zz << (vec2<u32>(1u, 37091u) % vec2<u32>(32u)), select(-(vec2<i32>(arg_1.x, 39527i) << (u_input.b % vec2<u32>(32u))), _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, arg_1.x), ~arg_1.yx), func_2(Struct_5(vec2<bool>(arg_0, arg_0), Struct_1(false), global0.x, global0.x, vec2<i32>(arg_1.x, -29297i))).zy), !vec2<bool>(true, all(vec4<bool>(arg_0, arg_0, false, true)))));
    var_2 = Struct_5(!vec2<bool>(false, arg_0 | false), var_2.b, global0.x, _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(max(1713f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(455f + var_2.d))))), reverseBits(arg_1.zy));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec2<bool>(~u_input.a > countOneBits(u_input.a), any(vec3<bool>(false, false, true))), vec2<bool>(true, false), vec2<bool>(true, true));
    let var_1 = -32151i;
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.yx))))));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(min(-319f, var_2.x)), -538f, _wgslsmith_f_op_f32(179f * var_2.x));
    var_0 = !select(!func_1(var_0.x | true, vec3<i32>(54576i, var_1, 47248i), u_input.a, vec3<u32>(u_input.b.x, 83596u, u_input.b.x)), !vec2<bool>(any(vec2<bool>(var_0.x, false)), !var_0.x), func_2(Struct_5(select(vec2<bool>(var_0.x, false), vec2<bool>(true, var_0.x), vec2<bool>(true, var_0.x)), Struct_1(var_0.x), 555f, global0.x, _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, var_1), vec2<i32>(1i, -2411i), vec2<i32>(-8120i, var_1)))).x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-global0.zy), select(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 21670u), u_input.b | vec2<u32>(1u, u_input.b.x)), vec2<u32>(~u_input.a, 36987u), false) << (~vec2<u32>(select(u_input.a, 4294967295u, true), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 34279u, u_input.a), vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x))) % vec2<u32>(32u)), vec2<i32>(-(~(-12525i)) << ((_wgslsmith_mult_u32(31815u, u_input.b.x) ^ (u_input.b.x << (u_input.b.x % 32u))) % 32u), -_wgslsmith_sub_i32(2147483647i, _wgslsmith_clamp_i32(-26094i, var_1, -30538i))));
}

