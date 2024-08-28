struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: Struct_1,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<bool, 15> = array<bool, 15>(false, true, false, false, true, false, true, true, false, true, false, false, false, true, true);

var<private> global2: Struct_3 = Struct_3(39745u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<f32>) -> f32 {
    let var_0 = ~vec3<u32>(u_input.a.x, countOneBits(_wgslsmith_sub_u32(71195u, 55966u) >> (u_input.a.x % 32u)), 1u);
    global0 = true;
    global2 = Struct_3(global2.a);
    var var_1 = Struct_1(reverseBits(firstLeadingBit(_wgslsmith_sub_i32(~(-12341i), -1i >> (global2.a % 32u)))), firstTrailingBit(i32(-1i) * -1i), select(!select(vec3<bool>(false, false, global1[_wgslsmith_index_u32(4294967295u, 15u)]), vec3<bool>(global1[_wgslsmith_index_u32(49163u, 15u)], true, true), vec3<bool>(true, false, false)), !vec3<bool>(global1[_wgslsmith_index_u32(~var_0.x, 15u)], true, true), global1[_wgslsmith_index_u32(34680u, 15u)]));
    var var_2 = var_0.x;
    return arg_1.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: f32, arg_2: vec2<i32>) -> Struct_3 {
    global0 = global1[_wgslsmith_index_u32(~(~global2.a), 15u)];
    let var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -284f) - _wgslsmith_div_vec2_f32(arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1560f, -682f, arg_1, -1084f), vec4<f32>(780f, -1157f, arg_1, -1000f)))))), _wgslsmith_f_op_f32(round(1672f)))));
    global1 = array<bool, 15>();
    var var_1 = Struct_1(arg_2.x, arg_2.x, !vec3<bool>(global1[_wgslsmith_index_u32(34584u, 15u)], global1[_wgslsmith_index_u32(reverseBits(firstTrailingBit(69759u)), 15u)], -411f == _wgslsmith_f_op_f32(-arg_1)));
    global0 = false;
    return Struct_3(1026u);
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    let var_0 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1000f, -1356f), 365f)) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1556f + -960f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2343f)))), _wgslsmith_f_op_f32(-772f * _wgslsmith_f_op_f32(trunc(420f))), vec2<i32>(-2147483647i, 2147483647i));
    let var_1 = vec2<f32>(1000f, -838f);
    global2 = Struct_3(14601u);
    var var_2 = _wgslsmith_f_op_f32(floor(-476f));
    var var_3 = Struct_3(~(~_wgslsmith_div_u32(~var_0.a, var_0.a)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + -605f)) + var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(1i);
    var var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -119f), 716f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(vec4<bool>(global1[_wgslsmith_index_u32(1u, 15u)], true, global1[_wgslsmith_index_u32(45191u, 15u)], global1[_wgslsmith_index_u32(u_input.b.x, 15u)]))))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(725f, 920f) * _wgslsmith_f_op_f32(select(-1048f, 902f, true)))), 1931f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1476f + -198f) + 1098f))))));
    var var_2 = Struct_1(_wgslsmith_div_i32(~select(_wgslsmith_div_i32(1i, 1i), _wgslsmith_sub_i32(-44542i, -2147483647i), global1[_wgslsmith_index_u32(4294967295u, 15u)] != global1[_wgslsmith_index_u32(global2.a, 15u)]), _wgslsmith_clamp_i32(2147483647i, _wgslsmith_sub_i32(firstTrailingBit(-48327i), -1i), _wgslsmith_dot_vec4_i32(-vec4<i32>(22929i, 25974i, 2147483647i, 0i), vec4<i32>(-5040i, -7166i, 0i, -5825i)))), 1i, vec3<bool>(!global1[_wgslsmith_index_u32(u_input.b.x, 15u)], !(true || !global1[_wgslsmith_index_u32(1u, 15u)]), false));
    let var_3 = select(var_2.c, select(var_2.c, vec3<bool>(global1[_wgslsmith_index_u32(max(50663u, firstTrailingBit(global2.a)), 15u)], false, any(vec2<bool>(global1[_wgslsmith_index_u32(13104u, 15u)], global1[_wgslsmith_index_u32(global2.a, 15u)]))), true), var_2.c);
    let var_4 = Struct_4(var_1.xz, abs(vec3<u32>(~global2.a, ~u_input.c, _wgslsmith_mod_u32(global2.a, ~0u))), Struct_1(-1i, var_2.b, select(vec3<bool>(false, global1[_wgslsmith_index_u32(45920u, 15u)] || global1[_wgslsmith_index_u32(110019u, 15u)], var_3.x), var_2.c, true)), vec3<i32>(-1i, i32(-1i) * -(~2147483647i), (i32(-1i) * -77711i) | _wgslsmith_dot_vec4_i32(select(vec4<i32>(var_2.b, var_2.b, var_2.a, 8843i), vec4<i32>(var_2.b, var_2.a, 2147483647i, var_2.a), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 15u)], var_3.x, global1[_wgslsmith_index_u32(global2.a, 15u)], true)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 47336i, -18776i, var_2.b), vec4<i32>(-8592i, var_2.b, var_2.b, var_2.a), vec4<i32>(var_2.a, var_2.b, var_2.a, var_2.b)))));
    let var_5 = Struct_2(var_4.c, -2084f, _wgslsmith_clamp_i32(12090i, _wgslsmith_div_i32(_wgslsmith_sub_i32(var_2.a, -22493i), _wgslsmith_dot_vec2_i32(var_4.d.xz, vec2<i32>(16538i, var_2.b))) ^ var_4.c.a, 1i), firstLeadingBit(~abs(0i)), Struct_1(countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-48646i, var_4.c.b), var_4.d.xy)), -_wgslsmith_add_i32(_wgslsmith_mult_i32(var_4.d.x, -1i), -11524i), vec3<bool>(any(select(var_4.c.c.xy, vec2<bool>(var_3.x, true), vec2<bool>(true, true))), true, true)));
    var_2 = var_5.a;
    let x = u_input.a;
    s_output = StorageBuffer(-357f, _wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(var_5.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))))), vec3<f32>(-586f, _wgslsmith_div_f32(-531f, _wgslsmith_f_op_f32(-var_4.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.a.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.a.x * -483f) + _wgslsmith_f_op_f32(sign(var_5.b))))), reverseBits(u_input.b.yx));
}

