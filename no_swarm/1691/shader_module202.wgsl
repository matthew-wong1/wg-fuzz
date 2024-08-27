struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
    d: bool,
    e: vec2<u32>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec3<f32>;

var<private> global2: bool;

var<private> global3: vec2<bool>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: vec4<i32>, arg_3: u32) -> bool {
    let var_0 = countOneBits(-1i);
    let var_1 = Struct_1(-444f, arg_1, -1083f, 407f);
    global2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.d), var_1.d))), var_1.a)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.c)));
    global2 = global1.x == _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_1.d)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.d, _wgslsmith_f_op_f32(min(global1.x, 1013f)))));
    var var_2 = !(_wgslsmith_f_op_f32(max(var_1.d, global1.x)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.x)) + 1417f)));
    return all(!select(vec4<bool>(1i > var_0, global1.x >= 196f, global3.x, false), !(!vec4<bool>(arg_1.x, true, false, var_1.b.x)), 4835u < min(u_input.b, 1u)));
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> vec4<f32> {
    global2 = !arg_1.c.b.x && false;
    var var_0 = firstLeadingBit(abs(reverseBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.b, arg_1.a.a.x, 0u), vec4<u32>(u_input.b, arg_1.e.x, arg_1.e.x, 4621u)))));
    let var_1 = vec4<i32>(arg_1.a.b, 1i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(firstLeadingBit(u_input.a), -arg_1.a.b), 2147483647i), _wgslsmith_add_i32(u_input.d.x, _wgslsmith_sub_i32(1i, u_input.e.x)));
    let var_2 = vec3<f32>(692f, _wgslsmith_f_op_f32(1625f + 1580f), _wgslsmith_f_op_f32(global1.x + arg_1.c.d));
    var_0 = ~firstLeadingBit(u_input.b);
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1261f, _wgslsmith_f_op_f32(879f + _wgslsmith_f_op_f32(sign(global1.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.c.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(734f * 583f))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(143f, var_2.x, arg_1.b, var_2.x) - vec4<f32>(592f, -966f, global1.x, arg_1.b)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.b, arg_1.b, global1.x, global1.x)))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-680f, -521f, -439f, 662f) + vec4<f32>(976f, global1.x, var_2.x, 679f)))))))));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(u_input.d.x, Struct_3(Struct_2(vec4<u32>(3895u, u_input.c, 7194u, arg_1.x), u_input.e.x), 839f, Struct_1(2025f, arg_0, 178f, global1.x), func_3(vec3<i32>(-1i, -15911i, -2147483647i), vec2<bool>(true, true), u_input.e, 4294967295u), _wgslsmith_mult_vec2_u32(arg_1.wz, arg_1.xy)))), vec4<f32>(_wgslsmith_div_f32(global1.x, 263f), global1.x, -526f, global1.x)));
    var var_1 = countOneBits(select(u_input.d, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, -42035i | u_input.e.x), vec2<i32>(firstTrailingBit(55540i), countOneBits(u_input.a))), vec2<bool>(false, (1u >= u_input.b) || arg_0.x)));
    global1 = vec3<f32>(-920f, global1.x, var_0.x);
    global0 = select(-(~_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, var_1.x), u_input.e.zx), var_1.x)), var_1.x, true);
    var var_2 = arg_1.x;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(593f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(2686f + -1308f), global1.x)), _wgslsmith_f_op_f32(-global1.x))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: f32) -> f32 {
    var var_0 = arg_0;
    global2 = arg_0.b.x;
    global3 = !(!var_0.b);
    var var_1 = Struct_1(-825f, var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(!(!var_0.b), vec4<u32>(~4294967295u, 113230u, u_input.c, ~u_input.c)))), -440f);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c));
    return _wgslsmith_f_op_f32(-arg_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -5206i;
    global1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-1362f)), _wgslsmith_f_op_f32(global1.x * -1931f), global1.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(750f, global1.x, -199f)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, 812f, 834f)))))), vec3<f32>(global1.x, _wgslsmith_f_op_f32(func_1(Struct_1(1000f, vec2<bool>(false, true), -1000f, 279f), select(vec2<bool>(global3.x, global3.x), vec2<bool>(global3.x, global3.x), true), global1.x)), -747f)), ~(~u_input.c) == u_input.c));
    global3 = select(vec2<bool>(true, true), vec2<bool>(_wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.d.x, u_input.d.x), ~u_input.a) == -(~u_input.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.x))) != global1.x), true);
    let var_0 = vec3<bool>(global3.x, any(select(vec3<bool>(any(vec3<bool>(false, global3.x, global3.x)), true, u_input.a == u_input.e.x), select(!vec3<bool>(false, global3.x, global3.x), vec3<bool>(global3.x, global3.x, global3.x), global1.x == global1.x), true)), !global3.x);
    global0 = abs(-1i);
    var var_1 = Struct_4(global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_dot_vec3_i32(u_input.e.yxy, u_input.e.xzz), abs(vec2<u32>(firstLeadingBit(countOneBits(u_input.c)), ~u_input.c)), 48422u);
}

