struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec3<f32> {
    var var_0 = select(!(!select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 2u)], global0[_wgslsmith_index_u32(1u, 2u)], false), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 2u)], true, global0[_wgslsmith_index_u32(12209u, 2u)]), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 2u)], global0[_wgslsmith_index_u32(u_input.a.x, 2u)], global0[_wgslsmith_index_u32(1379u, 2u)]))), vec3<bool>(true, any(!select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(u_input.b, 2u)], false, false), vec4<bool>(true, global0[_wgslsmith_index_u32(46398u, 2u)], true, global0[_wgslsmith_index_u32(4294967295u, 2u)]), true)), any(!(!vec3<bool>(global0[_wgslsmith_index_u32(0u, 2u)], false, false)))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(15409u, 1u), 2u)]);
    var var_1 = _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 4294967295u), vec3<u32>(u_input.a.x, firstLeadingBit(~4294967295u), _wgslsmith_sub_u32(4294967295u, max(133455u, u_input.b)))), u_input.a.yxx ^ ~reverseBits(~vec3<u32>(1u, 1u, 15510u)));
    global0 = array<bool, 2>();
    let var_2 = u_input.a;
    var_0 = !vec3<bool>(var_0.x, var_0.x, true);
    return vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(1163f + -491f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1178f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(956f + -1595f) - 855f))), -1138f);
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), vec3<f32>(_wgslsmith_f_op_f32(min(1461f, 2006f)), -1737f, -372f), any(select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 2u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 2u)], global0[_wgslsmith_index_u32(u_input.b, 2u)]), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 2u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 2u)], global0[_wgslsmith_index_u32(u_input.b, 2u)]), true))))) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-523f * _wgslsmith_f_op_f32(select(297f, -507f, false))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(721f, 336f, false)), 1688f)), 1807f), _wgslsmith_f_op_vec3_f32(func_3(Struct_1(-1i | arg_0.x), arg_0.x))));
    let var_1 = u_input.d.x;
    global0 = array<bool, 2>();
    global0 = array<bool, 2>();
    var var_2 = ~(-56141i);
    return 0u;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(925f * _wgslsmith_div_f32(262f, _wgslsmith_f_op_f32(select(-2646f, -1521f, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(806f * -1854f) + _wgslsmith_f_op_f32(-998f - -1541f)) - 1000f)));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(max(var_0.a.x, var_0.a.x)), -756f))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a.x))), var_0.a.x)));
    global0 = array<bool, 2>();
    let var_2 = var_1;
    var var_3 = var_0;
    return Struct_1(firstTrailingBit(-_wgslsmith_dot_vec3_i32(-u_input.c.zww, ~vec3<i32>(arg_1.a, u_input.d.x, u_input.c.x))));
}

fn func_1() -> bool {
    var var_0 = Struct_1(0i);
    let var_1 = u_input.a.wxw;
    var_0 = func_4(_wgslsmith_mult_u32(_wgslsmith_div_u32(~(~u_input.a.x), func_2(vec3<i32>(var_0.a, 10548i, var_0.a))), _wgslsmith_sub_u32(0u, _wgslsmith_clamp_u32(u_input.b, 5560u, 1u) >> (u_input.b % 32u))), Struct_1(u_input.d.x), vec2<i32>(u_input.d.x, firstLeadingBit(abs(-u_input.c.x))));
    global0 = array<bool, 2>();
    var_0 = func_4(83478u, func_4(_wgslsmith_dot_vec3_u32(vec3<u32>(1436u, u_input.b, ~var_1.x), ~u_input.a.yyy), func_4(u_input.a.x >> (55u % 32u), Struct_1(_wgslsmith_clamp_i32(-1i, -21180i, u_input.c.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(var_0.a, 2147483647i), u_input.c.xw)), select(u_input.c.yw, ~vec2<i32>(-5733i, 46930i), select(!vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 2u)]), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 2u)], global0[_wgslsmith_index_u32(1u, 2u)]), true))), select(u_input.c.wy, u_input.d, any(!vec2<bool>(global0[_wgslsmith_index_u32(var_1.x, 2u)], false))));
    return !all(!(!vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 2u)], false, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 2>();
    global0 = array<bool, 2>();
    let var_0 = _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(1943f + 116f)));
    global0 = array<bool, 2>();
    let var_1 = Struct_1(max(_wgslsmith_add_i32(45966i, _wgslsmith_div_i32(u_input.d.x, countOneBits(u_input.d.x))), -u_input.d.x));
    let var_2 = !func_1();
    var var_3 = true;
    var var_4 = firstLeadingBit(u_input.a.zz);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(u_input.a.x << (_wgslsmith_clamp_u32(20936u, u_input.b, 0u) % 32u))), u_input.d.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(trunc(1467f)), _wgslsmith_div_f32(-385f, -220f), _wgslsmith_f_op_f32(-var_0), 1593f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0, 1744f, 1558f, var_0), vec4<f32>(-1586f, var_0, var_0, 496f))), any(vec4<bool>(true, true, true, true)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, _wgslsmith_f_op_f32(sign(var_0)), 575f, _wgslsmith_f_op_f32(f32(-1f) * -334f)))));
}

